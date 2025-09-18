import 'package:flutter/material.dart';
import '../models/bus.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: BusListPage()));
}

class BusRepository {
  static List<Bus> getBuses() {
    return [
      Bus(
        fromCity: "Delhi",
        toCity: "Agra",
        busNumber: "R16",
        fromArrival: "08:30",
        toArrival: "11:45",
        stops: ["Delhi", "Faridabad", "Mathura", "Agra"],
      ),
      Bus(
        fromCity: "Delhi",
        toCity: "Agra",
        busNumber: "C12",
        fromArrival: "10:00",
        toArrival: "13:15",
        stops: ["Delhi", "Palwal", "Mathura", "Agra"],
      ),
      Bus(
        fromCity: "Mumbai",
        toCity: "Pune",
        busNumber: "M22",
        fromArrival: "09:00",
        toArrival: "11:15",
        stops: ["Mumbai", "Lonavala", "Talegaon", "Pune"],
      ),
      Bus(
        fromCity: "Chennai",
        toCity: "Madurai",
        busNumber: "C78",
        fromArrival: "06:30",
        toArrival: "12:10",
        stops: ["Chennai", "Villupuram", "Trichy", "Madurai"],
      ),
      Bus(
        fromCity: "Delhi",
        toCity: "Chandigarh",
        busNumber: "D27",
        fromArrival: "06:00",
        toArrival: "09:15",
        stops: ["Delhi", "Panipat", "Ambala", "Chandigarh"],
      ),
    ];
  }
}

// ------------------ Bus List Page ------------------
class BusListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buses = BusRepository.getBuses();

    return Scaffold(
      appBar: AppBar(title: Text("Available Buses")),
      body: ListView.builder(
        itemCount: buses.length,
        itemBuilder: (context, index) {
          final bus = buses[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Icon(Icons.directions_bus, color: Colors.orange),
              title: Text("Bus: ${bus.busNumber}"),
              subtitle: Text(
                "${bus.fromCity} → ${bus.toCity}\n"
                "Departure: ${bus.fromArrival}, Arrival: ${bus.toArrival}",
              ),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BusDetailPage(bus: bus)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ------------------ Bus Detail Page ------------------
class BusDetailPage extends StatelessWidget {
  final Bus bus;

  const BusDetailPage({super.key, required this.bus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bus ${bus.busNumber} Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${bus.fromCity} → ${bus.toCity}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Departure: ${bus.fromArrival} | Arrival: ${bus.toArrival}",
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 30, thickness: 2),

            // Timeline of Stops
            Expanded(
              child: ListView.builder(
                itemCount: bus.stops.length,
                itemBuilder: (context, index) {
                  final stop = bus.stops[index];
                  return ListTile(
                    leading: Icon(Icons.location_on, color: Colors.blue),
                    title: Text(stop),
                    subtitle: Text(
                      index == 0
                          ? "Start Point"
                          : (index == bus.stops.length - 1
                              ? "Destination"
                              : "Via Stop"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
