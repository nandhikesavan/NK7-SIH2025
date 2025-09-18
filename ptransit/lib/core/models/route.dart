class Route {
  final String id;
  final String name;
  final List<String> stops;
  final double distanceKm;

  Route({
    required this.id,
    required this.name,
    required this.stops,
    required this.distanceKm,
  });
}
