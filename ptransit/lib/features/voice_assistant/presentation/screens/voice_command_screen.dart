import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/providers/bus_provider.dart';

class VoiceCommandScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final busProvider = Provider.of<BusProvider>(context);
    final likedBuses = busProvider.likedBuses;
    return Scaffold(
      appBar: AppBar(title: Text('Liked Buses')),
      body: likedBuses.isEmpty
          ? Center(child: Text('No liked buses'))
          : ListView.builder(
              itemCount: likedBuses.length,
              itemBuilder: (context, index) {
                final bus = likedBuses[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: ListTile(
                    leading: Icon(Icons.directions_bus, color: Colors.orange),
                    title: Text("Bus: ${bus.busNumber}"),
                    subtitle: Text(
                      "From: ${bus.fromCity} (${bus.fromArrival})\n"
                      "To: ${bus.toCity} (${bus.toArrival})",
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite, color: Colors.red),
                      tooltip: 'Remove from liked buses',
                      onPressed: () {
                        busProvider.toggleLike(bus);
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}