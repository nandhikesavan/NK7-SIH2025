class Bus {
  final String fromCity;
  final String toCity;
  final String busNumber;
  final String fromArrival;
  final String toArrival;

  Bus({
    required this.fromCity,
    required this.toCity,
    required this.busNumber,
    required this.fromArrival,
    required this.toArrival,
  });

  factory Bus.fromJson(Map<String, dynamic> json) {
    return Bus(
      fromCity: json['fromCity'],
      toCity: json['toCity'],
      busNumber: json['busNumber'],
      fromArrival: json['fromArrival'],
      toArrival: json['toArrival'],
    );
  }
}
