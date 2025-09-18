import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import '../../../../core/models/bus.dart';

class MapScreen extends StatefulWidget {
  final Bus bus;

  const MapScreen({super.key, required this.bus});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _mapController;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  LatLng? _center;
  bool _isLoading = true;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _initializeMap();
  }

  Future<void> _initializeMap() async {
    try {
      // Get coordinates for the first stop (from city)
      final firstStop = widget.bus.stops.isNotEmpty ? widget.bus.stops.first : widget.bus.fromCity;
      final firstLocation = await _getLocationFromAddress(firstStop);
      
      if (firstLocation != null) {
        setState(() {
          _center = firstLocation;
          _isLoading = false;
        });
        await _addMarkersAndRoute();
      } else {
        // Fallback to a default location (Chennai)
        setState(() {
          _center = const LatLng(13.0827, 80.2707);
          _isLoading = false;
        });
        await _addMarkersAndRoute();
      }
    } catch (e) {
      print('Error initializing map: $e');
      setState(() {
        _center = const LatLng(13.0827, 80.2707); // Default to Chennai
        _isLoading = false;
        _errorMessage = 'Error loading map: ${e.toString()}';
      });
    }
  }

  Future<LatLng?> _getLocationFromAddress(String address) async {
    try {
      // Add country context for better geocoding results
      String searchAddress = address;
      if (!address.toLowerCase().contains('india') && !address.toLowerCase().contains('tamil nadu')) {
        searchAddress = '$address, Tamil Nadu, India';
      }
      
      List<Location> locations = await locationFromAddress(searchAddress);
      if (locations.isNotEmpty) {
        return LatLng(locations.first.latitude, locations.first.longitude);
      }
    } catch (e) {
      print('Error getting location for $address: $e');
      // Try without country context
      try {
        List<Location> locations = await locationFromAddress(address);
        if (locations.isNotEmpty) {
          return LatLng(locations.first.latitude, locations.first.longitude);
        }
      } catch (e2) {
        print('Error getting location for $address (retry): $e2');
      }
    }
    return null;
  }

  Future<void> _addMarkersAndRoute() async {
    Set<Marker> markers = {};
    List<LatLng> routePoints = [];

    // Add markers for each stop
    for (int i = 0; i < widget.bus.stops.length; i++) {
      final stop = widget.bus.stops[i];
      final location = await _getLocationFromAddress(stop);
      
      if (location != null) {
        routePoints.add(location);
        
        // Different marker for start, end, and intermediate stops
        BitmapDescriptor icon;
        if (i == 0) {
          icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen); // Start
        } else if (i == widget.bus.stops.length - 1) {
          icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed); // End
        } else {
          icon = BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue); // Intermediate
        }

        markers.add(
          Marker(
            markerId: MarkerId('stop_$i'),
            position: location,
            icon: icon,
            infoWindow: InfoWindow(
              title: stop,
              snippet: i == 0 
                  ? 'Starting Point' 
                  : i == widget.bus.stops.length - 1 
                      ? 'Destination' 
                      : 'Stop ${i + 1}',
            ),
          ),
        );
      }
    }

    // Create polyline connecting all stops
    if (routePoints.length > 1) {
      _polylines.add(
        Polyline(
          polylineId: const PolylineId('route'),
          points: routePoints,
          color: Colors.blue,
          width: 4,
          patterns: [PatternItem.dash(20), PatternItem.gap(10)],
        ),
      );
    }

    // If we have markers, adjust camera to show all markers
    if (markers.isNotEmpty && _mapController != null) {
      await _fitMarkersInView(markers);
    }

    setState(() {
      _markers = markers;
    });
  }

  Future<void> _fitMarkersInView(Set<Marker> markers) async {
    if (markers.isEmpty) return;

    double minLat = markers.first.position.latitude;
    double maxLat = markers.first.position.latitude;
    double minLng = markers.first.position.longitude;
    double maxLng = markers.first.position.longitude;

    for (Marker marker in markers) {
      minLat = minLat < marker.position.latitude ? minLat : marker.position.latitude;
      maxLat = maxLat > marker.position.latitude ? maxLat : marker.position.latitude;
      minLng = minLng < marker.position.longitude ? minLng : marker.position.longitude;
      maxLng = maxLng > marker.position.longitude ? maxLng : marker.position.longitude;
    }

    LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );

    await _mapController!.animateCamera(CameraUpdate.newLatLngBounds(bounds, 100.0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.bus.busNumber} Route'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _isLoading = true;
                _errorMessage = '';
                _markers.clear();
                _polylines.clear();
              });
              _initializeMap();
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Loading map and route...'),
                ],
              ),
            )
          : _errorMessage.isNotEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 64, color: Colors.red),
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isLoading = true;
                            _errorMessage = '';
                          });
                          _initializeMap();
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : Column(
                  children: [
                    // Bus information header
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      color: Colors.blue.shade50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bus: ${widget.bus.busNumber}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'From: ${widget.bus.fromCity} (${widget.bus.fromArrival})',
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            'To: ${widget.bus.toCity} (${widget.bus.toArrival})',
                            style: const TextStyle(fontSize: 14),
                          ),
                          if (widget.bus.stops.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Stops: ${widget.bus.stops.join(' → ')}',
                              style: const TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ],
                      ),
                    ),
                    // Map
                    Expanded(
                      child: _center != null
                          ? GoogleMap(
                              onMapCreated: (GoogleMapController controller) {
                                _mapController = controller;
                                // Fit markers in view after map is created
                                Future.delayed(const Duration(milliseconds: 500), () {
                                  if (_markers.isNotEmpty) {
                                    _fitMarkersInView(_markers);
                                  }
                                });
                              },
                              initialCameraPosition: CameraPosition(
                                target: _center!,
                                zoom: 10.0,
                              ),
                              markers: _markers,
                              polylines: _polylines,
                              mapType: MapType.normal,
                              myLocationEnabled: true,
                              myLocationButtonEnabled: true,
                              zoomControlsEnabled: true,
                              mapToolbarEnabled: true,
                            )
                          : const Center(
                              child: Text('Unable to load map'),
                            ),
                    ),
                    // Legend
                    Container(
                      padding: const EdgeInsets.all(16),
                      color: Colors.grey.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildLegendItem(Colors.green, 'Start'),
                          _buildLegendItem(Colors.blue, 'Stops'),
                          _buildLegendItem(Colors.red, 'Destination'),
                        ],
                      ),
                    ),
                  ],
                ),
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
