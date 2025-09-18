import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../../../core/providers/bus_provider.dart';

class RouteDetailsScreen extends StatefulWidget {
  const RouteDetailsScreen({super.key});

  @override
  State<RouteDetailsScreen> createState() => _RouteDetailsScreenState();
}

class _RouteDetailsScreenState extends State<RouteDetailsScreen> {
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  late SpeechToText _speechToText;
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _speechToText = SpeechToText();
  }

  /// Show bottom sheet with listening animation
  void _showListeningSheet(TextEditingController controller) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      backgroundColor: Colors.black87,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Listening...",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 20),
              // Animated colorful bars
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (i) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 400 + (i * 200)),
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    width: 8,
                    height: _isListening ? 40.0 : 20.0,
                    decoration: BoxDecoration(
                      color:
                          [
                            Colors.blue,
                            Colors.red,
                            Colors.green,
                            Colors.yellow,
                          ][i],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  _speechToText.stop();
                  Navigator.pop(context);
                },
                child: const Text("Stop"),
              ),
            ],
          ),
        );
      },
    );
  }

  /// Listen to speech and fill the controller
  Future<void> _listen(TextEditingController controller) async {
    if (!_isListening) {
      bool available = await _speechToText.initialize(
        onStatus: (status) {
          if (status == 'done' || status == 'error') {
            setState(() => _isListening = false);
            if (Navigator.canPop(context)) Navigator.pop(context);
          }
        },
        onError: (error) {
          setState(() => _isListening = false);
          if (Navigator.canPop(context)) Navigator.pop(context);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Error: ${error.errorMsg}')));
        },
      );

      if (available) {
        setState(() => _isListening = true);
        _showListeningSheet(controller); // 👈 show the listening UI
        _speechToText.listen(
          onResult: (result) {
            setState(() {
              controller.text = result.recognizedWords;
              _isListening = false;
            });
            if (Navigator.canPop(context)) Navigator.pop(context);
          },
          listenFor: const Duration(seconds: 10),
          pauseFor: const Duration(seconds: 2),
          cancelOnError: true,
        );
      }
    } else {
      setState(() => _isListening = false);
      _speechToText.stop();
      if (Navigator.canPop(context)) Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _speechToText.stop();
    _fromController.dispose();
    _toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final busProvider = Provider.of<BusProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Find Buses")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // From City Input
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _fromController,
                    decoration: const InputDecoration(
                      labelText: "From City",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic, color: Colors.blue),
                  onPressed: () => _listen(_fromController),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _fromController.clear(),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // To City Input
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _toController,
                    decoration: const InputDecoration(
                      labelText: "To City",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.mic, color: Colors.blue),
                  onPressed: () => _listen(_toController),
                ),
                IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => _toController.clear(),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Find Buses Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                busProvider.findBuses(
                  _fromController.text.trim(),
                  _toController.text.trim(),
                );
              },
              child: const Text(
                "Find Buses",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Show result buses
            Expanded(
              child:
                  busProvider.filteredBuses.isEmpty
                      ? const Center(child: Text("No buses found"))
                      : ListView.builder(
                        itemCount: busProvider.filteredBuses.length,
                        itemBuilder: (context, index) {
                          final bus = busProvider.filteredBuses[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              leading: const Icon(
                                Icons.directions_bus,
                                color: Colors.orange,
                              ),
                              title: Text("Bus: ${bus.busNumber}"),
                              subtitle: Text(
                                "From: ${bus.fromCity} (${bus.fromArrival})\n"
                                "To: ${bus.toCity} (${bus.toArrival})",
                              ),
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
