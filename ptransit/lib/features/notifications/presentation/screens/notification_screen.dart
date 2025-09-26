import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../../../core/providers/notification_provider.dart';
import '../../../../core/models/notification_alert.dart';
import '../../../../core/providers/language_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = context.read<NotificationProvider>();
      await provider.initialize();
      await provider.checkAndCleanupExpiredNotifications();
    });
  }

  Future<void> _refreshNotifications() async {
    final provider = context.read<NotificationProvider>();
    await provider.initialize();
    await provider.checkAndCleanupExpiredNotifications();
  }

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(languageProvider.translate('notifications')),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        actions: [],
      ),
      body: StreamBuilder<DatabaseEvent>(
        stream: FirebaseDatabase.instance.ref().child('notified_buses').onValue,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                languageProvider.translate('error') + ': ${snapshot.error}',
              ),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text(languageProvider.translate('loading')));
          }

          final dataSnap = snapshot.data?.snapshot;
          if (dataSnap == null || dataSnap.value == null) {
            return RefreshIndicator(
              onRefresh: _refreshNotifications,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: 100),
                  const Icon(
                    Icons.notifications_off,
                    size: 64,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    languageProvider.translate('no_buses_found'),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    languageProvider.translate('find_buses_button'),
                    style: const TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }

          final raw = dataSnap.value;
          final Map<dynamic, dynamic> map =
              raw is Map ? raw : Map<dynamic, dynamic>.from(raw as dynamic);
          final items =
              map.entries.map<Map<String, dynamic>>((entry) {
                final value = Map<String, dynamic>.from(entry.value as Map);
                value['__key'] = entry.key.toString();
                return value;
              }).toList();

          items.sort((a, b) {
            final at = a['timestamp']?.toString() ?? '';
            final bt = b['timestamp']?.toString() ?? '';
            return bt.compareTo(at);
          });

          return Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.deepPurple.shade50,
                child: Row(
                  children: [
                    Icon(Icons.schedule, color: Colors.deepPurple),
                    const SizedBox(width: 8),
                    Text(
                      '${items.length} Scheduled Alerts',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '15, 10, 5 min before arrival',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(width: 12),
                    TextButton.icon(
                      onPressed:
                          items.isEmpty
                              ? null
                              : () =>
                                  _showClearAllDbSheet(context, items.length),
                      icon: const Icon(Icons.delete_forever),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                      ),
                      label: const Text('Delete All'),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final m = items[index];
                    final nodeKey = m['__key']?.toString() ?? '';
                    final busNumber = m['busNumber']?.toString() ?? '';
                    final fromCity = m['fromCity']?.toString() ?? '';
                    final toCity = m['toCity']?.toString() ?? '';
                    final fromArrival = m['fromArrival']?.toString() ?? '';
                    final toArrival = m['toArrival']?.toString() ?? '';
                    final List<dynamic> stopsDyn =
                        (m['stops'] as List?) ?? const [];
                    final stops = stopsDyn.map((e) => e.toString()).toList();
                    final List<dynamic> offsetsDyn =
                        (m['scheduledOffsets'] as List?) ?? const [];
                    final offsets =
                        offsetsDyn
                            .map((e) => int.tryParse(e.toString()) ?? 0)
                            .where((e) => e > 0)
                            .toList();

                    return _buildRealtimeBusCard(
                      context: context,
                      nodeKey: nodeKey,
                      busNumber: busNumber,
                      fromCity: fromCity,
                      toCity: toCity,
                      fromArrival: fromArrival,
                      toArrival: toArrival,
                      stops: stops,
                      offsets: offsets,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildNotificationCard(
    BuildContext context,
    NotificationAlert alert,
    NotificationProvider provider,
  ) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Text(
            alert.busNumber.substring(2),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
        title: Text(
          'Bus ${alert.busNumber}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${alert.fromCity} → ${alert.toCity}'),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.grey.shade600),
                const SizedBox(width: 4),
                Text(
                  'Arrives at ${alert.arrivalTime}',
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.notifications_active, size: 16, color: Colors.green),
                const SizedBox(width: 4),
                Text(
                  'Multiple alerts scheduled:',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                _buildAlertIndicator(Colors.blue, '15 min'),
                const SizedBox(width: 8),
                _buildAlertIndicator(Colors.orange, '10 min'),
                const SizedBox(width: 8),
                _buildAlertIndicator(Colors.red, '5 min'),
              ],
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.cancel, color: Colors.deepPurple),
          onPressed: () => _showCancelDialog(context, alert, provider),
          tooltip: 'Cancel notification',
        ),
        isThreeLine: true,
      ),
    );
  }

  Future<void> _showCancelDialog(
    BuildContext context,
    NotificationAlert alert,
    NotificationProvider provider,
  ) async {
    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Cancel Notification'),
            content: Text(
              'Are you sure you want to cancel the notification for Bus ${alert.busNumber}?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
    );

    if (result == true) {
      await provider.cancelBusNotification(alert.id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Notification for Bus ${alert.busNumber} cancelled'),
            backgroundColor: Colors.deepPurple,
          ),
        );
      }
    }
  }

  Future<void> _showClearAllDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Clear All Notifications'),
            content: const Text(
              'Are you sure you want to cancel all scheduled notifications?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
    );

    if (result == true) {
      final provider = context.read<NotificationProvider>();
      await provider.cancelAllNotifications();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('All notifications cancelled'),
            backgroundColor: Colors.deepPurple,
          ),
        );
      }
    }
  }

  Widget _buildAlertIndicator(Color color, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRealtimeBusCard({
    required BuildContext context,
    required String nodeKey,
    required String busNumber,
    required String fromCity,
    required String toCity,
    required String fromArrival,
    required String toArrival,
    required List<String> stops,
    required List<int> offsets,
  }) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    busNumber.length > 2
                        ? busNumber.substring(busNumber.length - 2)
                        : busNumber,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bus $busNumber',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 2),
                      Text('$fromCity → $toCity'),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.call_made,
                          size: 14,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          fromArrival,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.flag, size: 14, color: Colors.grey.shade600),
                        const SizedBox(width: 4),
                        Text(
                          toArrival,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  tooltip: 'Delete',
                  icon: const Icon(Icons.delete, color: Colors.deepPurple),
                  onPressed:
                      () => _showDeleteDbDialog(context, nodeKey, busNumber),
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (stops.isNotEmpty)
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children:
                    stops
                        .take(5)
                        .map(
                          (s) => Chip(
                            label: Text(s),
                            backgroundColor: Colors.deepPurple.shade50,
                          ),
                        )
                        .toList(),
              ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.notifications_active,
                  size: 16,
                  color: Colors.green.shade700,
                ),
                const SizedBox(width: 6),
                Text(
                  offsets.isNotEmpty
                      ? 'Alerts: ${offsets.map((e) => '$e min').join(', ')}'
                      : 'Alerts: none',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDeleteDbDialog(
    BuildContext context,
    String nodeKey,
    String busNumber,
  ) async {
    final result = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Delete Notification'),
            content: Text('Delete scheduled notifications for Bus $busNumber?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
    );

    if (result == true) {
      try {
        await FirebaseDatabase.instance
            .ref()
            .child('notified_buses')
            .child(nodeKey)
            .remove();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Deleted notifications for Bus $busNumber'),
              backgroundColor: Colors.deepPurple,
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error deleting: $e'),
              backgroundColor: Colors.deepPurple,
            ),
          );
        }
      }
    }
  }

  Future<void> _showClearAllDbSheet(BuildContext context, int? count) async {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.delete_forever, color: Colors.deepPurple),
                  const SizedBox(width: 8),
                  const Text(
                    'Delete all notifications?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                count == null
                    ? 'This will remove all scheduled bus alerts.'
                    : 'This will remove $count scheduled bus alerts.',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.deepPurple,
                      ),
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        Navigator.pop(context);
                        try {
                          await FirebaseDatabase.instance
                              .ref()
                              .child('notified_buses')
                              .remove();
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('All notifications deleted'),
                                backgroundColor: Colors.deepPurple,
                              ),
                            );
                          }
                        } catch (e) {
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Error deleting all: $e'),
                                backgroundColor: Colors.deepPurple,
                              ),
                            );
                          }
                        }
                      },
                      icon: const Icon(Icons.delete_forever),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                      ),
                      label: const Text('Delete All'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
