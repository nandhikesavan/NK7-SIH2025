import 'package:flutter/material.dart';
import '../../../../core/models/bus.dart';

class BusStationPage extends StatelessWidget {
  final Bus bus;

  const BusStationPage({super.key, required this.bus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus ${bus.busNumber} Stations'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurple.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bus: ${bus.busNumber}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.green),
                      const SizedBox(width: 4),
                      Text(
                        '${bus.fromCity} (${bus.fromArrival})',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.flag, color: Colors.red),
                      const SizedBox(width: 4),
                      Text(
                        '${bus.toCity} (${bus.toArrival})',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Stations',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.separated(
                itemCount: bus.stops.length,
                separatorBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        color: Colors.deepPurple.shade100,
                        thickness: 1,
                      ),
                    ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Icon(
                        index == 0
                            ? Icons.location_on
                            : (index == bus.stops.length - 1
                                ? Icons.flag
                                : Icons.directions_bus),
                        color:
                            index == 0
                                ? Colors.green
                                : (index == bus.stops.length - 1
                                    ? Colors.red
                                    : Colors.orange),
                      ),
                      title: Text(
                        bus.stops[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing:
                          index == 0
                              ? const Text(
                                'Start',
                                style: TextStyle(color: Colors.green),
                              )
                              : (index == bus.stops.length - 1
                                  ? const Text(
                                    'End',
                                    style: TextStyle(color: Colors.red),
                                  )
                                  : null),
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
