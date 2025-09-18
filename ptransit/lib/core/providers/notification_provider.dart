import 'package:flutter/foundation.dart';
import '../models/notification_alert.dart';
import '../models/bus.dart';
import '../services/notification_service.dart';

class NotificationProvider extends ChangeNotifier {
  final List<NotificationAlert> _scheduledNotifications = [];
  final NotificationService _notificationService = NotificationService();
  bool _isLoading = false;

  List<NotificationAlert> get scheduledNotifications => _scheduledNotifications;
  bool get isLoading => _isLoading;

  Future<void> initialize() async {
    _isLoading = true;
    notifyListeners();
    
    try {
      await _notificationService.initialize();
      await _loadPendingNotifications();
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
      
      // Group notifications by bus to avoid duplicates
      final Map<String, NotificationAlert> busAlerts = {};
      
      for (final notification in pending) {
        // Parse notification data to create NotificationAlert
        if (notification.payload != null) {
          final parts = notification.payload!.split('_');
          if (parts.length >= 4) {
            final busNumber = parts[1];
            final toCity = parts[2];
            // final minutes = parts[3]; // Not used in current implementation
            
            final busKey = '${busNumber}_$toCity';
            
            if (!busAlerts.containsKey(busKey)) {
              final alert = NotificationAlert(
                id: '${busNumber}_$toCity',
                busNumber: busNumber,
                fromCity: 'Unknown', // We don't store this in payload
                toCity: toCity,
                arrivalTime: 'Unknown', // We don't store this in payload
                scheduledTime: DateTime.now().add(const Duration(minutes: 15)), // Approximate
                busId: busNumber,
              );
              
              busAlerts[busKey] = alert;
            }
          }
        }
      }
      
      _scheduledNotifications.addAll(busAlerts.values);
    } catch (e) {
      print('Error loading pending notifications: $e');
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
          ),
        );
      }
      
      _scheduledNotifications.removeWhere((alert) => alert.id == notificationId);
      notifyListeners();
    } catch (e) {
      print('Error canceling notification: $e');
    }
  }

  Future<void> cancelAllNotifications() async {
    try {
      await _notificationService.cancelAllNotifications();
      _scheduledNotifications.clear();
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
    final expiredAlerts = _scheduledNotifications.where((alert) {
      // Create a temporary bus object to check arrival time
      final tempBus = Bus(
        fromCity: alert.fromCity,
        toCity: alert.toCity,
        busNumber: alert.busNumber,
        fromArrival: '',
        toArrival: alert.arrivalTime,
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
}
