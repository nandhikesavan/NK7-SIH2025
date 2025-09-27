import '../../../../core/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../../../core/models/bus.dart';
import '../../../tracking/presentation/screens/map_screen.dart';
import '../../../tracking/bus_station_page.dart';

class VoiceCommandScreen extends StatelessWidget {
  DatabaseReference? _getDbRef(BuildContext context) {
    final phone = Provider.of<AuthProvider>(context, listen: false).user?.phone;
    if (phone == null) return null;
    return FirebaseDatabase.instance.ref("users_by_phone/$phone/liked_buses");
  }

  VoiceCommandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dbRef = _getDbRef(context);
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
      body:
          dbRef == null
              ? const Center(child: Text('User not logged in'))
              : StreamBuilder(
                stream: dbRef.onValue,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  }
                  if (!snapshot.hasData ||
                      snapshot.data?.snapshot.value == null) {
                    return const Center(child: Text("No liked buses"));
                  }

                  final value = snapshot.data!.snapshot.value;
                  final Map<dynamic, dynamic> data =
                      value is Map
                          ? value
                          : value == null
                          ? {}
                          : Map.from(value as dynamic);
                  final buses =
                      data.values
                          .map(
                            (e) => Bus.fromMap(Map<dynamic, dynamic>.from(e)),
                          )
                          .toList();

                  return ListView.builder(
                    itemCount: buses.length,
                    itemBuilder: (context, index) {
                      final bus = buses[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
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
                                icon: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                tooltip: 'Remove from liked buses',
                                onPressed: () {
                                  if (dbRef != null) {
                                    dbRef.child(bus.busNumber).remove();
                                  }
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
