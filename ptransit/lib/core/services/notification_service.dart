import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../models/bus.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();
  bool _isInitialized = false;

  Future<void> initialize() async {
    if (_isInitialized) return;

    // Initialize timezone
    tz.initializeTimeZones();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _notifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    _isInitialized = true;
  }

  Future<bool> requestNotificationPermissions() async {
    // iOS permissions are requested during initialization; Android 13+ needs runtime permission
    final status = await Permission.notification.request();
    return status.isGranted;
  }

  void _onNotificationTapped(NotificationResponse response) {
    // Handle notification tap
    print('Notification tapped: ${response.payload}');
  }

  Future<void> scheduleBusArrivalNotification(Bus bus) async {
    await initialize();
    final granted = await requestNotificationPermissions();
    if (!granted) {
      print('Notification permission not granted');
      return;
    }

    try {
      // Parse the arrival time
      final arrivalTime = _parseTime(bus.toArrival);
      if (arrivalTime == null) {
        print('Could not parse arrival time: ${bus.toArrival}');
        return;
      }

      await scheduleBusArrivalNotificationWithOffsets(bus, const [15, 10, 5], parsedArrival: arrivalTime);

      // Schedule a cleanup notification after arrival time to auto-disable alerts
      final cleanupTime = arrivalTime.add(const Duration(minutes: 1));
      if (cleanupTime.isAfter(DateTime.now())) {
        await _notifications.zonedSchedule(
          bus.hashCode + 100, // Different ID for cleanup
          'Bus Arrival Complete',
          'Bus ${bus.busNumber} has arrived at ${bus.toCity}',
          tz.TZDateTime.from(cleanupTime, tz.local),
          const NotificationDetails(
            android: AndroidNotificationDetails(
              'bus_arrival_complete',
              'Bus Arrival Complete',
              channelDescription: 'Notifications when bus arrives',
              importance: Importance.low,
              priority: Priority.low,
              icon: '@mipmap/ic_launcher',
              color: Colors.green,
              playSound: false,
              enableVibration: false,
              fullScreenIntent: false,
              autoCancel: true,
            ),
          ),
          androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
          uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
          payload: 'bus_complete_${bus.busNumber}_${bus.toCity}',
        );
        // Also stop repeating reminder if running
        await _notifications.cancel(bus.hashCode + 200);
      }
    } catch (e) {
      print('Error scheduling notifications: $e');
    }
  }

  Future<void> scheduleBusArrivalNotificationWithOffsets(
    Bus bus,
    List<int> minutesOffsets, {
    DateTime? parsedArrival,
  }) async {
    await initialize();
    final granted = await requestNotificationPermissions();
    if (!granted) return;

    final arrivalTime = parsedArrival ?? _parseTime(bus.toArrival);
    if (arrivalTime == null) return;
    if (arrivalTime.isBefore(DateTime.now())) return;

    for (int i = 0; i < minutesOffsets.length; i++) {
      final minutes = minutesOffsets[i];
      final notificationTime = arrivalTime.subtract(Duration(minutes: minutes));
      if (notificationTime.isBefore(DateTime.now())) continue;

      final notificationId = bus.hashCode + i;
      await _notifications.zonedSchedule(
        notificationId,
        '🚌 Bus Alert - $minutes min',
        'Bus ${bus.busNumber} arriving at ${bus.toCity} in $minutes minutes!',
        tz.TZDateTime.from(notificationTime, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
            'bus_arrival_$minutes',
            'Bus Arrival Notifications',
            channelDescription: 'Notifications for bus arrival times',
            importance: Importance.max,
            priority: Priority.max,
            icon: '@mipmap/ic_launcher',
            color: _getAlertColor(minutes),
            playSound: true,
            enableVibration: true,
            fullScreenIntent: true,
            showWhen: true,
            when: notificationTime.millisecondsSinceEpoch,
            category: AndroidNotificationCategory.alarm,
            visibility: NotificationVisibility.public,
            autoCancel: true,
            largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
            styleInformation: BigTextStyleInformation(
              'Bus ${bus.busNumber} will arrive at ${bus.toCity} in $minutes minutes!\n\nRoute: ${bus.fromCity} → ${bus.toCity}\nArrival Time: ${bus.toArrival}',
              contentTitle: '🚌 Bus Alert - $minutes min',
              htmlFormatBigText: true,
              summaryText: 'Bus Tracking Alert',
            ),
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        payload: 'bus|${bus.busNumber}|${bus.fromCity}|${bus.toCity}|${bus.toArrival}|$minutes',
      );
    }
  }

  Color _getAlertColor(int minutes) {
    switch (minutes) {
      case 15:
        return Colors.blue;
      case 10:
        return Colors.orange;
      case 5:
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  Future<void> scheduleMultipleBusNotifications(List<Bus> buses) async {
    for (final bus in buses) {
      await scheduleBusArrivalNotification(bus);
    }
  }

  Future<void> cancelBusNotification(Bus bus) async {
    // Cancel all three notifications for this bus (15, 10, 5 min alerts)
    for (int i = 0; i < 3; i++) {
      await _notifications.cancel(bus.hashCode + i);
    }
  }

  Future<void> cancelRepeatingReminder(Bus bus) async {
    await _notifications.cancel(bus.hashCode + 200);
  }

  Future<void> rescheduleForNewEta({
    required Bus bus,
    required DateTime newArrivalTime,
  }) async {
    await initialize();
    final granted = await requestNotificationPermissions();
    if (!granted) return;

    // Cancel existing alerts for this bus
    await cancelBusNotification(bus);

    // Recreate a temporary Bus-like view using the new ETA text for payload/title
    final adjustedBus = Bus(
      busNumber: bus.busNumber,
      fromCity: bus.fromCity,
      toCity: bus.toCity,
      fromArrival: bus.fromArrival,
      toArrival: _formatTime(newArrivalTime),
      stops: bus.stops,
      location: bus.location,
    );

    // Schedule using the same logic as scheduleBusArrivalNotification
    final alertMinutes = [15, 10, 5];
    for (int i = 0; i < alertMinutes.length; i++) {
      final minutes = alertMinutes[i];
      final notificationTime = newArrivalTime.subtract(Duration(minutes: minutes));
      if (notificationTime.isBefore(DateTime.now())) continue;

      final notificationId = bus.hashCode + i;
      await _notifications.zonedSchedule(
        notificationId,
        '🚌 Bus Alert - $minutes min',
        'Bus ${bus.busNumber} arriving at ${bus.toCity} in $minutes minutes! (updated)',
        tz.TZDateTime.from(notificationTime, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
            'bus_arrival_$minutes',
            'Bus Arrival Notifications',
            channelDescription: 'Notifications for bus arrival times',
            importance: Importance.max,
            priority: Priority.max,
            icon: '@mipmap/ic_launcher',
            color: _getAlertColor(minutes),
            playSound: true,
            enableVibration: true,
            fullScreenIntent: true,
            category: AndroidNotificationCategory.alarm,
            visibility: NotificationVisibility.public,
            autoCancel: true,
            largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
            styleInformation: BigTextStyleInformation(
              'Bus ${bus.busNumber} will arrive at ${bus.toCity} in $minutes minutes!\n\nRoute: ${bus.fromCity} → ${bus.toCity}\nArrival Time: ${_formatTime(newArrivalTime)}',
              contentTitle: '🚌 Bus Alert - $minutes min',
              htmlFormatBigText: true,
              summaryText: 'Bus Tracking Alert',
            ),
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        payload: 'bus|${bus.busNumber}|${bus.fromCity}|${bus.toCity}|${_formatTime(newArrivalTime)}|$minutes',
      );
    }

    // Cleanup one minute after new arrival
    final cleanupTime = newArrivalTime.add(const Duration(minutes: 1));
    if (cleanupTime.isAfter(DateTime.now())) {
      await _notifications.zonedSchedule(
        bus.hashCode + 100,
        'Bus Arrival Complete',
        'Bus ${bus.busNumber} has arrived at ${bus.toCity}',
        tz.TZDateTime.from(cleanupTime, tz.local),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'bus_arrival_complete',
            'Bus Arrival Complete',
            channelDescription: 'Notifications when bus arrives',
            importance: Importance.low,
            priority: Priority.low,
            icon: '@mipmap/ic_launcher',
            color: Colors.green,
            playSound: false,
            enableVibration: false,
            fullScreenIntent: false,
            autoCancel: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        payload: 'bus_complete_${bus.busNumber}_${bus.toCity}',
      );
      await _notifications.cancel(bus.hashCode + 200);
    }
  }

  String _formatTime(DateTime time) {
    final hour = time.hour % 12 == 0 ? 12 : time.hour % 12;
    final minute = time.minute.toString().padLeft(2, '0');
    final period = time.hour >= 12 ? 'pm' : 'am';
    return '$hour:$minute $period';
  }

  Future<void> showImmediateBusInfo(Bus bus) async {
    await initialize();
    final granted = await requestNotificationPermissions();
    if (!granted) return;

    await _notifications.show(
      bus.hashCode + 50,
      '🚌 ${bus.busNumber} — ${bus.fromCity} → ${bus.toCity}',
      'ETA: ${bus.toArrival}'.trim(),
      NotificationDetails(
        android: AndroidNotificationDetails(
          'bus_info',
          'Bus Info',
          channelDescription: 'Immediate bus info alerts',
          importance: Importance.max,
          priority: Priority.max,
          playSound: true,
          enableVibration: true,
          visibility: NotificationVisibility.public,
          styleInformation: BigTextStyleInformation(
            'Bus ${bus.busNumber}\nRoute: ${bus.fromCity} → ${bus.toCity}\nETA: ${bus.toArrival}',
            contentTitle: '🚌 Bus ${bus.busNumber}',
            summaryText: 'Route update',
          ),
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: 'bus|${bus.busNumber}|${bus.fromCity}|${bus.toCity}|${bus.toArrival}|immediate',
    );
  }

  Future<void> startRepeatingReminderUntilArrival(Bus bus) async {
    await initialize();
    final granted = await requestNotificationPermissions();
    if (!granted) return;

    // Repeating every minute (Android). Will be cancelled at arrival cleanup.
    await _notifications.periodicallyShow(
      bus.hashCode + 200,
      '🚌 ${bus.busNumber} approaching ${bus.toCity}',
      'Keep ready. ETA: ${bus.toArrival}',
      RepeatInterval.everyMinute,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'bus_repeat',
          'Bus Repeating Alerts',
          channelDescription: 'Repeating reminders until arrival',
          importance: Importance.max,
          priority: Priority.max,
          playSound: true,
          enableVibration: true,
          category: AndroidNotificationCategory.alarm,
          visibility: NotificationVisibility.public,
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      androidAllowWhileIdle: true,
      payload: 'bus|${bus.busNumber}|${bus.fromCity}|${bus.toCity}|${bus.toArrival}|repeat',
    );
  }

  Future<void> cancelAllNotifications() async {
    await _notifications.cancelAll();
  }

  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    return await _notifications.pendingNotificationRequests();
  }

  DateTime? _parseTime(String timeString) {
    try {
      // Handle different time formats like "09:30 am", "08:00 pm", "5:15 am"
      final cleanTime = timeString.toLowerCase().trim();
      
      // Extract hour, minute, and am/pm
      final regex = RegExp(r'(\d{1,2}):(\d{2})\s*(am|pm)');
      final match = regex.firstMatch(cleanTime);
      
      if (match == null) return null;
      
      int hour = int.parse(match.group(1)!);
      final minute = int.parse(match.group(2)!);
      final period = match.group(3)!;
      
      // Convert to 24-hour format
      if (period == 'pm' && hour != 12) {
        hour += 12;
      } else if (period == 'am' && hour == 12) {
        hour = 0;
      }
      
      // Create DateTime for today with the parsed time
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day, hour, minute);
    } catch (e) {
      print('Error parsing time: $timeString - $e');
      return null;
    }
  }

  // Check if bus has already arrived
  bool hasBusArrived(Bus bus) {
    final arrivalTime = _parseTime(bus.toArrival);
    if (arrivalTime == null) return false;
    return arrivalTime.isBefore(DateTime.now());
  }

  // Show immediate notification for testing
  Future<void> showTestNotification() async {
    await initialize();
    
    await _notifications.show(
      999,
      '🚌 Test Bus Alert',
      'This is a test notification for bus tracking system',
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'test',
          'Test Notifications',
          channelDescription: 'Test notifications',
          importance: Importance.max,
          priority: Priority.max,
          icon: '@mipmap/ic_launcher',
          color: Colors.blue,
          playSound: true,
          enableVibration: true,
          fullScreenIntent: true,
          styleInformation: BigTextStyleInformation(
            'This is a test notification for the bus tracking system.\n\nFeatures:\n• Multiple alerts (15, 10, 5 min)\n• WhatsApp-style notifications\n• Auto-disable after arrival',
            contentTitle: '🚌 Test Bus Alert',
            summaryText: 'Bus Tracking Test',
          ),
        ),
      ),
    );
  }
}