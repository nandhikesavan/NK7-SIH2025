import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/providers/auth_provider.dart';
import 'core/providers/bus_provider.dart';
import 'core/providers/language_provider.dart';

import 'features/tracking/presentation/screens/map_screen.dart';
import 'features/tracking/presentation/screens/route_details_screen.dart';
import 'features/notifications/presentation/screens/notification_screen.dart';
import 'features/language/presentation/screens/language_selection_screen.dart';
import 'features/voice_assistant/presentation/screens/voice_command_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => BusProvider()),
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Punjab Bus Tracker',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        ),
        home: const HomePage(), // 👈 HomePage will now be RouteDetails
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    RouteDetailsScreen(), // 👈 HomePage is RouteDetails
    NotificationScreen(), // 👈 Notifications in new tab
    MapScreen(), // 👈 Extra tab: Map (optional)
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Punjab Bus Tracker"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.language, color: Colors.orange),
              title: const Text("Language Selection"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LanguageSelectionScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.mic, color: Colors.orange),
              title: const Text("Voice Assistant"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VoiceCommandScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.alt_route), label: "Routes"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Map"),
        ],
      ),
    );
  }
}
