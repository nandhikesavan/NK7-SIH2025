import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/providers/bus_provider.dart';
import 'app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => BusProvider(), child: const MyApp()),
  );
}
