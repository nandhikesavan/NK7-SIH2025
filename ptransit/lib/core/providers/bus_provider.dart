import 'package:flutter/foundation.dart';
import '../models/bus.dart';
import '../services/bus_repository.dart';

class BusProvider extends ChangeNotifier {
  final List<Bus> _buses = BusRepository.getBuses();
  List<Bus> _filteredBuses = [];

  List<Bus> get filteredBuses => _filteredBuses;

  void findBuses(String fromCity, String toCity) {
    _filteredBuses =
        _buses.where((bus) {
          return bus.fromCity.toLowerCase() == fromCity.toLowerCase() &&
              bus.toCity.toLowerCase() == toCity.toLowerCase();
        }).toList();
    notifyListeners();
  }
}
