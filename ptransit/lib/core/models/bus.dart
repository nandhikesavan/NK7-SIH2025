class Bus {
  final String fromCity;
  final String toCity;
  final String busNumber;
  final String fromArrival;
  final String toArrival;
  final List<String> stops;

  Bus({
    required this.fromCity,
    required this.toCity,
    required this.busNumber,
    required this.fromArrival,
    required this.toArrival,
    this.stops = const [],
  });

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      fromCity: json['fromCity'],
      toCity: json['toCity'],
      busNumber: json['busNumber'],
      fromArrival: json['fromArrival'],
      toArrival: json['toArrival'],
      stops:
          (json['stops'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
    );
  }
}
