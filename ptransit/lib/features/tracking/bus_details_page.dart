import 'package:flutter/material.dart';

class BusDetailsPage extends StatelessWidget {
  final String busName;
  final List<String> stations;
  final Map<String, dynamic> busDetails;

  const BusDetailsPage({
    Key? key,
    required this.busName,
    required this.stations,
    required this.busDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(busName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bus Details:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...busDetails.entries.map(
              (entry) => Text('${entry.key}: ${entry.value}'),
            ),
            SizedBox(height: 24),
            Text(
              'Stations:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: stations.length,
                itemBuilder: (context, index) {
                  return Card(child: ListTile(title: Text(stations[index])));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
