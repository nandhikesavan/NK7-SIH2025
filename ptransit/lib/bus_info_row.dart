import 'package:flutter/material.dart';

class BusInfoRow extends StatelessWidget {
  final String busNo;
  final String destination;
  final String eta;

  const BusInfoRow({
    super.key,
    required this.busNo,
    required this.destination,
    required this.eta,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.directions_bus, color: Colors.black),
        const SizedBox(width: 8),
        Text(busNo, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(width: 8),
        Text('To $destination', style: const TextStyle(color: Colors.black54)),
        const Spacer(),
        Icon(Icons.wifi, color: Colors.blue[300], size: 18),
        const SizedBox(width: 4),
        Text(eta, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}
