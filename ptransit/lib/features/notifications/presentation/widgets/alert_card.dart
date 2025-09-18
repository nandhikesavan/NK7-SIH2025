import 'package:flutter/material.dart';

class AlertCard extends StatelessWidget {
  final String message;

  const AlertCard({required this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(padding: const EdgeInsets.all(8.0), child: Text(message)),
    );
  }
}
