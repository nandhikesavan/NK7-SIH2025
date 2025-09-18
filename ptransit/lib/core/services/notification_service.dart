import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../models/bus.dart';

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

  void _onNotificationTapped(NotificationResponse response) {
    // Handle notification tap
    print('Notification tapped: ${response.payload}');
  }

  Future<void> scheduleBusArrivalNotification(Bus bus) async {
    await initialize();

    try {
      // Parse the arrival time
      final arrivalTime = _parseTime(bus.toArrival);
      if (arrivalTime == null) {
        print('Could not parse arrival time: ${bus.toArrival}');
        return;
      }

      // Check if arrival time has already passed
      if (arrivalTime.isBefore(DateTime.now())) {
        print('Arrival time has already passed for bus ${bus.busNumber}');
        return;
      }

      // Schedule multiple notifications (15, 10, and 5 minutes before)
      final alertTimes = [15, 10, 5];
      
      for (int i = 0; i < alertTimes.length; i++) {
        final minutes = alertTimes[i];
        final notificationTime = arrivalTime.subtract(Duration(minutes: minutes));
        
        // Check if notification time is in the future
        if (notificationTime.isBefore(DateTime.now())) {
          print('Notification time for $minutes min alert is in the past, skipping');
          continue;
        }

        // Create unique ID for each alert
        final notificationId = bus.hashCode + i;
        
        // Schedule the notification with enhanced display
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
              usesChronometer: false,
              category: AndroidNotificationCategory.alarm,
              visibility: NotificationVisibility.public,
              ongoing: false,
              autoCancel: true,
              largeIcon: const DrawableResourceAndroidBitmap('@mipmap/ic_launcher'),
              styleInformation: BigTextStyleInformation(
                'Bus ${bus.busNumber} will arrive at ${bus.toCity} in $minutes minutes!\n\nRoute: ${bus.fromCity} → ${bus.toCity}\nArrival Time: ${bus.toArrival}',
                contentTitle: '🚌 Bus Alert - $minutes min',
                htmlFormatBigText: true,
                summaryText: 'Bus Tracking Alert',
              ),
            ),
            iOS: DarwinNotificationDetails(
              presentAlert: true,
              presentBadge: true,
              presentSound: true,
              sound: 'default',
              badgeNumber: 1,
              categoryIdentifier: 'bus_arrival',
            ),
          ),
          androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
          uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
          payload: 'bus_${bus.busNumber}_${bus.toCity}_$minutes',
        );

        print('Scheduled $minutes min notification for bus ${bus.busNumber} at $notificationTime');
      }

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
      }
    } catch (e) {
      print('Error scheduling notifications: $e');
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