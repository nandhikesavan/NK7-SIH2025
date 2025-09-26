import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../../../core/models/bus.dart';
import '../../../tracking/presentation/screens/map_screen.dart';
import '../../../tracking/bus_station_page.dart';

class VoiceCommandScreen extends StatelessWidget {
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref("liked_buses");

  VoiceCommandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Liked Buses',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StreamBuilder(
        stream: _dbRef.onValue,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          if (!snapshot.hasData || snapshot.data?.snapshot.value == null) {
            return const Center(child: Text("No liked buses"));
          }

          final value = snapshot.data!.snapshot.value;

          // Convert Firebase data to Map
          final Map<dynamic, dynamic> data =
              value is Map ? value : Map.from(value as dynamic);

          final buses =
              data.values
                  .map((e) => Bus.fromMap(Map<dynamic, dynamic>.from(e)))
                  .toList();

          return ListView.builder(
            itemCount: buses.length,
            itemBuilder: (context, index) {
              final bus = buses[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                color: Colors.white,
                surfaceTintColor: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BusStationPage(bus: bus),
                      ),
                    );
                  },
                  leading: const Icon(
                    Icons.directions_bus,
                    color: Colors.deepPurple,
                  ),
                  title: Text("Bus: ${bus.busNumber}"),
                  subtitle: Text(
                    "From: ${bus.fromCity} (${bus.fromArrival})\n"
                    "To: ${bus.toCity} (${bus.toArrival})\n"
                    "Stops: ${bus.stops.join(" → ")}",
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // ✅ Unlike button
                      IconButton(
                        icon: const Icon(Icons.favorite, color: Colors.red),
                        tooltip: 'Remove from liked buses',
                        onPressed: () {
                          _dbRef
                              .orderByChild("busNumber")
                              .equalTo(bus.busNumber)
                              .once()
                              .then((event) {
                                if (event.snapshot.value != null) {
                                  final map = Map<dynamic, dynamic>.from(
                                    event.snapshot.value as dynamic,
                                  );
                                  map.forEach((key, value) {
                                    _dbRef.child(key).remove();
                                  });
                                }
                              });
                        },
                      ),
                      const SizedBox(width: 8),
                      // ✅ Location button
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapScreen(bus: bus),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.deepPurple,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
