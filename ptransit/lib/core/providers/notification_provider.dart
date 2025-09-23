import 'package:flutter/foundation.dart';
import 'package:firebase_database/firebase_database.dart';
import '../models/notification_alert.dart';
import '../models/bus.dart';
import '../services/notification_service.dart';

class NotificationProvider extends ChangeNotifier {
  final List<NotificationAlert> _scheduledNotifications = [];
  final NotificationService _notificationService = NotificationService();
  bool _isLoading = false;
  final DatabaseReference _scheduledRef = FirebaseDatabase.instance.ref().child('scheduled_buses');

  List<NotificationAlert> get scheduledNotifications => _scheduledNotifications;
  bool get isLoading => _isLoading;

  Future<void> initialize() async {
    _isLoading = true;
    notifyListeners();

    try {
      await _notificationService.initialize();
      await _loadPendingNotifications();
      await _loadSavedScheduledFromFirebase();
    } catch (e) {
      print('Error initializing notifications: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _loadPendingNotifications() async {
    try {
      final pending = await _notificationService.getPendingNotifications();
      _scheduledNotifications.clear();

      for (final notification in pending) {
        // Expected payload: bus|busNumber|fromCity|toCity|arrival|minutesOrType
        final payload = notification.payload;
        if (payload == null || payload.isEmpty) continue;
        final parts = payload.split('|');
        if (parts.length < 6) continue;

        if (parts[0] != 'bus') continue;
        final busNumber = parts[1];
        final fromCity = parts[2];
        final toCity = parts[3];
        final arrival = parts[4];
        final minutesOrType = parts[5];

        // Only include alarm entries with integer minute offsets (15/10/5)
        final minutes = int.tryParse(minutesOrType);
        if (minutes == null) {
          continue; // skip 'immediate' and 'repeat'
        }

        final arrivalTime = _parseTime(arrival);
        final scheduledTime =
            arrivalTime?.subtract(Duration(minutes: minutes)) ?? DateTime.now();

        _scheduledNotifications.add(
          NotificationAlert(
            id: '${busNumber}_${toCity}_$minutes',
            busNumber: busNumber,
            fromCity: fromCity,
            toCity: toCity,
            arrivalTime: arrival,
            scheduledTime: scheduledTime,
            busId: busNumber,
          ),
        );
      }
    } catch (e) {
      print('Error loading pending notifications: $e');
    }
  }

  // Local time parser to compute scheduledTime from arrival string
  DateTime? _parseTime(String timeString) {
    try {
      final cleanTime = timeString.toLowerCase().trim();
      final regex = RegExp(r'(\d{1,2}):(\d{2})\s*(am|pm)');
      final match = regex.firstMatch(cleanTime);
      if (match == null) return null;
      int hour = int.parse(match.group(1)!);
      final minute = int.parse(match.group(2)!);
      final period = match.group(3)!;
      if (period == 'pm' && hour != 12) hour += 12;
      if (period == 'am' && hour == 12) hour = 0;
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day, hour, minute);
    } catch (_) {
      return null;
    }
  }

  Future<void> scheduleBusNotification(Bus bus) async {
    try {
      await _notificationService.scheduleBusArrivalNotification(bus);

      // Add to our list
      final alert = NotificationAlert.fromBus(
        bus.hashCode.toString(),
        bus.busNumber,
        bus.fromCity,
        bus.toCity,
        bus.toArrival,
        DateTime.now().add(const Duration(minutes: 15)), // This is approximate
      );

      _scheduledNotifications.add(alert);
      notifyListeners();
    } catch (e) {
      print('Error scheduling notification: $e');
    }
  }

  Future<void> scheduleBusNotificationWithOffsets(Bus bus, List<int> offsets) async {
    try {
      await _notificationService.showImmediateBusInfo(bus);
      await _notificationService.scheduleBusArrivalNotificationWithOffsets(bus, offsets);
      await _notificationService.startRepeatingReminderUntilArrival(bus);

      // Add entries per-offset so UI shows exact alarms
      final arrivalTime = _parseTime(bus.toArrival);
      for (final m in offsets) {
        final scheduledTime = arrivalTime?.subtract(Duration(minutes: m)) ?? DateTime.now();
        _scheduledNotifications.add(
          NotificationAlert(
            id: '${bus.busNumber}_${bus.toCity}_$m',
            busNumber: bus.busNumber,
            fromCity: bus.fromCity,
            toCity: bus.toCity,
            arrivalTime: bus.toArrival,
            scheduledTime: scheduledTime,
            busId: bus.busNumber,
          ),
        );
      }

      // Persist to Firebase so it appears on notifications page even after restart
      await _saveScheduledToFirebase(bus, offsets);
      notifyListeners();
    } catch (e) {
      print('Error scheduling notification with offsets: $e');
    }
  }

  Future<void> cancelBusNotification(String notificationId) async {
    try {
      final alert = _scheduledNotifications.firstWhere(
        (alert) => alert.id == notificationId,
        orElse: () => throw Exception('Notification not found'),
      );

      if (alert.busId != null) {
        await _notificationService.cancelBusNotification(
          Bus(
            fromCity: alert.fromCity,
            toCity: alert.toCity,
            busNumber: alert.busNumber,
            fromArrival: '',
            toArrival: alert.arrivalTime,
            stops: [],
          ),
        );
        // Cancel repeating reminder too
        await _notificationService.cancelRepeatingReminder(
          Bus(
            fromCity: alert.fromCity,
            toCity: alert.toCity,
            busNumber: alert.busNumber,
            fromArrival: '',
            toArrival: alert.arrivalTime,
            stops: [],
          ),
        );
      }

      _scheduledNotifications.removeWhere(
        (alert) => alert.id == notificationId,
      );
      notifyListeners();
    } catch (e) {
      print('Error canceling notification: $e');
    }
  }

  Future<void> cancelBusAndRepeating(Bus bus) async {
    try {
      await _notificationService.cancelBusNotification(bus);
      await _notificationService.cancelRepeatingReminder(bus);
      _scheduledNotifications.removeWhere((a) => a.busNumber == bus.busNumber && a.toCity == bus.toCity);
      await _removeScheduledFromFirebase(bus);
      notifyListeners();
    } catch (e) {
      print('Error canceling bus notifications: $e');
    }
  }

  Future<void> cancelAllNotifications() async {
    try {
      await _notificationService.cancelAllNotifications();
      _scheduledNotifications.clear();
      // Optional: clear remote entries as well
      try { await _scheduledRef.remove(); } catch (_) {}
      notifyListeners();
    } catch (e) {
      print('Error canceling all notifications: $e');
    }
  }

  Future<void> showTestNotification() async {
    try {
      await _notificationService.showTestNotification();
    } catch (e) {
      print('Error showing test notification: $e');
    }
  }

  bool isNotificationScheduled(String busNumber, String toCity) {
    return _scheduledNotifications.any(
      (alert) => alert.busNumber == busNumber && alert.toCity == toCity,
    );
  }

  bool hasBusArrived(Bus bus) {
    return _notificationService.hasBusArrived(bus);
  }

  Future<void> checkAndCleanupExpiredNotifications() async {
    // Remove notifications for buses that have already arrived
    final expiredAlerts =
        _scheduledNotifications.where((alert) {
          // Create a temporary bus object to check arrival time
          final tempBus = Bus(
            fromCity: alert.fromCity,
            toCity: alert.toCity,
            busNumber: alert.busNumber,
            fromArrival: '',
            toArrival: alert.arrivalTime,
            stops: [],
          );
          return hasBusArrived(tempBus);
        }).toList();

    for (final alert in expiredAlerts) {
      _scheduledNotifications.remove(alert);
    }

    if (expiredAlerts.isNotEmpty) {
      notifyListeners();
    }
  }

  Future<void> _saveScheduledToFirebase(Bus bus, List<int> offsets) async {
    try {
      final key = '${bus.busNumber}_${bus.toCity}';
      final nowIso = DateTime.now().toIso8601String();
      await _scheduledRef.child(key).set({
        'busNumber': bus.busNumber,
        'fromCity': bus.fromCity,
        'toCity': bus.toCity,
        'arrivalTime': bus.toArrival,
        'offsets': offsets,
        'createdAt': nowIso,
      });
    } catch (e) {
      print('Error saving scheduled bus to Firebase: $e');
    }
  }

  Future<void> _removeScheduledFromFirebase(Bus bus) async {
    try {
      final key = '${bus.busNumber}_${bus.toCity}';
      await _scheduledRef.child(key).remove();
    } catch (e) {
      print('Error removing scheduled bus from Firebase: $e');
    }
  }

  Future<void> _loadSavedScheduledFromFirebase() async {
    try {
      final snap = await _scheduledRef.get();
      if (!snap.exists) return;
      final data = Map<dynamic, dynamic>.from(snap.value as Map);
      for (final entry in data.entries) {
        final map = Map<String, dynamic>.from(entry.value as Map);
        final busNumber = map['busNumber']?.toString() ?? '';
        final fromCity = map['fromCity']?.toString() ?? '';
        final toCity = map['toCity']?.toString() ?? '';
        final arrival = map['arrivalTime']?.toString() ?? '';
        final offsets = (map['offsets'] as List).map((e) => int.tryParse(e.toString()) ?? 0).where((e) => e > 0).toList();
        final arrivalTime = _parseTime(arrival);

        for (final m in offsets) {
          final id = '${busNumber}_${toCity}_$m';
          if (_scheduledNotifications.any((a) => a.id == id)) continue; // avoid dupes
          final scheduledTime = arrivalTime?.subtract(Duration(minutes: m)) ?? DateTime.now();
          _scheduledNotifications.add(
            NotificationAlert(
              id: id,
              busNumber: busNumber,
              fromCity: fromCity,
              toCity: toCity,
              arrivalTime: arrival,
              scheduledTime: scheduledTime,
              busId: busNumber,
            ),
          );
        }
      }
    } catch (e) {
      print('Error loading saved scheduled from Firebase: $e');
    }
  }
}
