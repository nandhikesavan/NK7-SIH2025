import '../constants/api_constants.dart';
import '../models/bus.dart';
import '../models/route.dart';

class ApiService {
  Future<List<Bus>> fetchBusLocations() async {
    // TODO: Implement API call using ApiConstants.busLocationEndpoint
    return [];
  }

  Future<List<Route>> fetchRoutes() async {
    // TODO: Implement API call using ApiConstants.routeEndpoint
    return [];
  }

  Future<DateTime?> fetchEta(String busId, String stopId) async {
    // TODO: Implement API call using ApiConstants.etaEndpoint
    return null;
  }
}

// API calls for real-time tracking
//class ApiService {
// Implement API methods here
//}
