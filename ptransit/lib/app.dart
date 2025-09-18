import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/providers/auth_provider.dart';
import 'core/providers/bus_provider.dart';
import 'core/providers/language_provider.dart';
import 'core/providers/notification_provider.dart';

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
        ChangeNotifierProvider(create: (_) => NotificationProvider()),
      ],
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: languageProvider.translate('app_title'),
            theme: ThemeData(
              primarySwatch: Colors.orange,
              scaffoldBackgroundColor: const Color(0xFFF5F5F5),
            ),
            home: const HomePage(),
          );
        },
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
    VoiceCommandScreen(), // 👈 Liked buses screen
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(languageProvider.translate('app_title')),
            centerTitle: true,
          ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.orange),
              child: Center(
                child: Text(
                  languageProvider.translate('menu'),
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.language, color: Colors.orange),
              title: Text(languageProvider.translate('language_selection')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LanguageSelectionScreen(),
                  ),
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
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.alt_route), 
            label: languageProvider.translate('routes'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications),
            label: languageProvider.translate('notifications'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite), 
            label: languageProvider.translate('liked_buses'),
          ),
        ],
      ),
        );
      },
    );
  }
}
