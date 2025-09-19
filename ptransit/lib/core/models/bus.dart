class Bus {
  final String busNumber;
  final String fromCity;
  final String toCity;
  final String fromArrival;
  final String toArrival;
  final List<String> stops;
  final Map<String, dynamic>? location; // 👈 {lat: 12.34, lng: 77.56}

  Bus({
    required this.busNumber,
    required this.fromCity,
    required this.toCity,
    required this.fromArrival,
    required this.toArrival,
    required this.stops,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      "busNumber": busNumber,
      "fromCity": fromCity,
      "toCity": toCity,
      "fromArrival": fromArrival,
      "toArrival": toArrival,
      "stops": stops,
      "location": location,
    };
  }

  factory Bus.fromMap(Map<dynamic, dynamic> map) {
    return Bus(
      busNumber: map["busNumber"] ?? "",
      fromCity: map["fromCity"] ?? "",
      toCity: map["toCity"] ?? "",
      fromArrival: map["fromArrival"] ?? "",
      toArrival: map["toArrival"] ?? "",
      stops: List<String>.from(map["stops"] ?? []),
      location:
          map["location"] != null
              ? Map<String, dynamic>.from(map["location"])
              : null,
    );
  }
}
