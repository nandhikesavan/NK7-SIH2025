import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/providers/bus_provider.dart';

class RouteDetailsScreen extends StatefulWidget {
  const RouteDetailsScreen({super.key});

  @override
  State<RouteDetailsScreen> createState() => _RouteDetailsScreenState();
}

class _RouteDetailsScreenState extends State<RouteDetailsScreen> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final busProvider = Provider.of<BusProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Find Buses")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _fromController,
                    decoration: const InputDecoration(
                      labelText: "From City",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _fromController.clear(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _toController,
                    decoration: const InputDecoration(
                      labelText: "To City",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _toController.clear(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                busProvider.findBuses(
                  _fromController.text.trim(),
                  _toController.text.trim(),
                );
              },
              child: const Text(
                "Find Buses",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Show result buses
            Expanded(
              child:
                  busProvider.filteredBuses.isEmpty
                      ? const Center(child: Text("No buses found"))
                      : ListView.builder(
                        itemCount: busProvider.filteredBuses.length,
                        itemBuilder: (context, index) {
                          final bus = busProvider.filteredBuses[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              leading: const Icon(
                                Icons.directions_bus,
                                color: Colors.orange,
                              ),
                              title: Text("Bus: ${bus.busNumber}"),
                              subtitle: Text(
                                "From: ${bus.fromCity} (${bus.fromArrival})\n"
                                "To: ${bus.toCity} (${bus.toArrival})",
                              ),
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
