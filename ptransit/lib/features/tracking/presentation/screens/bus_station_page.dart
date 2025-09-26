import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/models/bus.dart';
import '../../../../core/providers/language_provider.dart';

class BusStationPage extends StatelessWidget {
  final Bus bus;
  const BusStationPage({Key? key, required this.bus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(langProvider.translate('bus') + ': ' + bus.busNumber),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              langProvider.translate('from') +
                  ': ' +
                  bus.fromCity +
                  ' (' +
                  bus.fromArrival +
                  ')',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              langProvider.translate('to') +
                  ': ' +
                  bus.toCity +
                  ' (' +
                  bus.toArrival +
                  ')',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              langProvider.translate('stops') + ':',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            ...bus.stops.map((stop) => Text(stop)).toList(),
            if (bus.location != null) ...[
              const SizedBox(height: 16),
              Text(
                langProvider.translate('location') + ': ${bus.location}',
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
