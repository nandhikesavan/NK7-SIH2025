import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../../core/providers/bus_provider.dart';
import '../../../../core/providers/language_provider.dart';
import '../../bus_station_page.dart';
import '../screens/map_screen.dart';

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

  final DatabaseReference _searchRef = FirebaseDatabase.instance.ref().child(
    "searched_buses",
  );
  final DatabaseReference _likedRef = FirebaseDatabase.instance.ref().child(
    "liked_buses",
  );

  @override
  void initState() {
    super.initState();
    _speechToText = SpeechToText();
  }

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
            ],
          ),
        );
      },
    );
  }

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
        _showListeningSheet(controller);
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
    final langProvider = Provider.of<LanguageProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    langProvider.translate("find_buses"),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // From City Input
                  _buildTextInput(
                    controller: _fromController,
                    iconColor: const Color(0xFF6B46C1),
                    hintKey: "from_city",
                    listenFunction: () => _listen(_fromController),
                    langProvider: langProvider,
                  ),

                  const SizedBox(height: 16),

                  // To City Input
                  _buildTextInput(
                    controller: _toController,
                    iconColor: const Color(0xFF6B46C1),
                    hintKey: "to_city",
                    listenFunction: () => _listen(_toController),
                    langProvider: langProvider,
                  ),

                  const SizedBox(height: 30),

                  // Find Buses Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6B46C1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 2,
                      ),
                      onPressed: () {
                        final fromCity = _fromController.text.trim();
                        final toCity = _toController.text.trim();

                        busProvider.findBuses(fromCity, toCity);

                        final searchRef = _searchRef.push();
                        searchRef.set({
                          "fromCity": fromCity,
                          "toCity": toCity,
                          "timestamp": DateTime.now().toIso8601String(),
                        });

                        for (var bus in busProvider.filteredBuses) {
                          searchRef.child("buses").push().set({
                            "busNumber": bus.busNumber,
                            "fromCity": bus.fromCity,
                            "toCity": bus.toCity,
                            "fromArrival": bus.fromArrival,
                            "toArrival": bus.toArrival,
                            "stops": bus.stops,
                          });
                        }
                      },
                      child: Text(
                        langProvider.translate("find_buses_button"),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Show result buses
                  Expanded(
                    child:
                        busProvider.filteredBuses.isEmpty
                            ? Center(
                              child: Text(
                                langProvider.translate("no_buses_found"),
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                            : ListView.builder(
                              itemCount: busProvider.filteredBuses.length,
                              itemBuilder: (context, index) {
                                final bus = busProvider.filteredBuses[index];
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 12),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.grey.shade200,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 3,
                                        offset: const Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    leading: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple.withOpacity(
                                          0.1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Icon(
                                        Icons.directions_bus,
                                        color: Colors.deepPurple,
                                        size: 24,
                                      ),
                                    ),
                                    title: Text(
                                      "${langProvider.translate('bus')}: ${bus.busNumber}",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            busProvider.toggleLike(bus);
                                            if (busProvider.isLiked(bus)) {
                                              _likedRef
                                                  .child(bus.busNumber)
                                                  .set({
                                                    "busNumber": bus.busNumber,
                                                    "fromCity": bus.fromCity,
                                                    "toCity": bus.toCity,
                                                    "fromArrival":
                                                        bus.fromArrival,
                                                    "toArrival": bus.toArrival,
                                                    "stops": bus.stops,
                                                    "location": bus.location,
                                                  });
                                            } else {
                                              _likedRef
                                                  .child(bus.busNumber)
                                                  .remove();
                                            }
                                          },
                                          child: Icon(
                                            busProvider.isLiked(bus)
                                                ? Icons.favorite
                                                : Icons.favorite_border,
                                            color:
                                                busProvider.isLiked(bus)
                                                    ? Colors.red
                                                    : Colors.grey,
                                            size: 24,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (context) =>
                                                        MapScreen(bus: bus),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.location_on,
                                            color: Colors.deepPurple,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                    subtitle: Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        "${langProvider.translate('from')}: ${bus.fromCity} (${bus.fromArrival})\n"
                                        "${langProvider.translate('to')}: ${bus.toCity} (${bus.toArrival})",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) =>
                                                  BusStationPage(bus: bus),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInput({
    required TextEditingController controller,
    required Color iconColor,
    required String hintKey,
    required VoidCallback listenFunction,
    required LanguageProvider langProvider,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: langProvider.translate(hintKey),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic, color: iconColor),
            onPressed: listenFunction,
          ),
        ],
      ),
    );
  }
}
