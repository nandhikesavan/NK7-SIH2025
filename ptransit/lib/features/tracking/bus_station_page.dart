import 'package:flutter/material.dart';
import '../../../../core/models/bus.dart';
import 'package:provider/provider.dart';
import '../../../../core/services/notification_service.dart';
import '../../../../core/providers/notification_provider.dart';
import '../notifications/presentation/screens/notification_screen.dart';

class BusStationPage extends StatefulWidget {
  final Bus bus;

  const BusStationPage({super.key, required this.bus});

  @override
  State<BusStationPage> createState() => _BusStationPageState();
}

class _BusStationPageState extends State<BusStationPage> {
  bool _scheduled = false;

  @override
  Widget build(BuildContext context) {
    final bus = widget.bus;
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
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton.icon(
              icon: const Icon(Icons.notifications_active),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () async {
                final provider = context.read<NotificationProvider>();
                final isActive = provider.isNotificationScheduled(bus.busNumber, bus.toCity);
                if (!isActive) {
                  final offsets = await _pickAlertOffsets(context);
                  if (offsets == null || offsets.isEmpty) return;
                  await provider.scheduleBusNotificationWithOffsets(bus, offsets);
                  if (mounted) {
                    setState(() => _scheduled = true);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Alerts set for ${bus.busNumber}: ${offsets.join(', ')} min before.',
                        ),
                      ),
                    );
                  }
                } else {
                  await provider.cancelBusAndRepeating(bus);
                  if (mounted) {
                    setState(() => _scheduled = false);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Notifications deactivated for this bus'),
                      ),
                    );
                  }
                }
              },
              label: Text(
                context.watch<NotificationProvider>().isNotificationScheduled(bus.busNumber, bus.toCity)
                    ? 'Deactivate'
                    : 'Notify Me',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<List<int>?> _pickAlertOffsets(BuildContext context) async {
  final options = [15, 10, 5];
  final selected = <int>{15, 10, 5};
  return showDialog<List<int>>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Select alert times'),
        content: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: options
                  .map(
                    (m) => CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: selected.contains(m),
                      onChanged: (v) {
                        setState(() {
                          if (v == true) {
                            selected.add(m);
                          } else {
                            selected.remove(m);
                          }
                        });
                      },
                      title: Text('$m minutes before'),
                    ),
                  )
                  .toList(),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, <int>[]),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final list = selected.toList()..sort((a, b) => b.compareTo(a));
              Navigator.pop(context, list);
            },
            child: const Text('Notify me'),
          ),
        ],
      );
    },
  );
}
