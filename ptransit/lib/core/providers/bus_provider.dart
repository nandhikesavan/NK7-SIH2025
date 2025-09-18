import 'package:flutter/foundation.dart';
import '../models/bus.dart';
import '../services/bus_repository.dart';

class BusProvider extends ChangeNotifier {
  final List<Bus> _buses = BusRepository.getBuses();
  List<Bus> _filteredBuses = [];
  final List<Bus> _likedBuses = [];

  List<Bus> get filteredBuses => _filteredBuses;
  List<Bus> get likedBuses => _likedBuses;

  void findBuses(String fromCity, String toCity) {
    _filteredBuses =
        _buses.where((bus) {
          return bus.fromCity.toLowerCase() == fromCity.toLowerCase() &&
              bus.toCity.toLowerCase() == toCity.toLowerCase();
        }).toList();
    notifyListeners();
  }

  void toggleLike(Bus bus) {
    if (_likedBuses.contains(bus)) {
      _likedBuses.remove(bus);
    } else {
      _likedBuses.add(bus);
    }
    notifyListeners();
  }

  bool isLiked(Bus bus) {
    return _likedBuses.contains(bus);
  }
}
