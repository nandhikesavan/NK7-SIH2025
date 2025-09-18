import 'package:flutter/material.dart';

class FindBusPage extends StatelessWidget {
  const FindBusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6E9),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Find Your Bus"),
      ),
      body: const Center(
        child: Text(
          "Search and track buses here 🚍",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
