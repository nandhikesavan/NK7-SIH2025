class NotificationAlert {
  final String id;
  final String busNumber;
  final String fromCity;
  final String toCity;
  final String arrivalTime;
  final DateTime scheduledTime;
  final bool isActive;
  final String? busId;

  NotificationAlert({
    required this.id,
    required this.busNumber,
    required this.fromCity,
    required this.toCity,
    required this.arrivalTime,
    required this.scheduledTime,
    this.isActive = true,
    this.busId,
  });

  factory NotificationAlert.fromBus(String busId, String busNumber, String fromCity, String toCity, String arrivalTime, DateTime scheduledTime) {
    return NotificationAlert(
      id: '${busId}_${scheduledTime.millisecondsSinceEpoch}',
      busNumber: busNumber,
      fromCity: fromCity,
      toCity: toCity,
      arrivalTime: arrivalTime,
      scheduledTime: scheduledTime,
      busId: busId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'busNumber': busNumber,
      'fromCity': fromCity,
      'toCity': toCity,
      'arrivalTime': arrivalTime,
      'scheduledTime': scheduledTime.toIso8601String(),
      'isActive': isActive,
      'busId': busId,
    };
  }

  factory NotificationAlert.fromJson(Map<String, dynamic> json) {
    return NotificationAlert(
      id: json['id'],
      busNumber: json['busNumber'],
      fromCity: json['fromCity'],
      toCity: json['toCity'],
      arrivalTime: json['arrivalTime'],
      scheduledTime: DateTime.parse(json['scheduledTime']),
      isActive: json['isActive'] ?? true,
      busId: json['busId'],
    );
  }

  NotificationAlert copyWith({
    String? id,
    String? busNumber,
    String? fromCity,
    String? toCity,
    String? arrivalTime,
    DateTime? scheduledTime,
    bool? isActive,
    String? busId,
  }) {
    return NotificationAlert(
      id: id ?? this.id,
      busNumber: busNumber ?? this.busNumber,
      fromCity: fromCity ?? this.fromCity,
      toCity: toCity ?? this.toCity,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      isActive: isActive ?? this.isActive,
      busId: busId ?? this.busId,
    );
  }
}
