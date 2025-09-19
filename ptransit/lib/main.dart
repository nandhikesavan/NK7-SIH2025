import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/providers/bus_provider.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCxXQQuiGv9TrDcfbJNNi_dA6LYGyr-ce0',
      appId: '1:568855121471:android:bb8799069c15c5d152b28a',
      messagingSenderId: '568855121471',
      projectId: 'nk7-sih',
    ),
  );

  final busProvider = BusProvider();
  runApp(
    ChangeNotifierProvider(create: (_) => busProvider, child: const MyApp()),
  );
}
