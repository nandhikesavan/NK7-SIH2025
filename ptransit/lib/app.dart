import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:intl/intl.dart';

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
  String _currentTime = '';
  Timer? _clockTimer;

  final List<Widget> _tabs = [
    RouteDetailsScreen(), // 👈 HomePage is RouteDetails
    NotificationScreen(), // 👈 Notifications in new tab
    VoiceCommandScreen(), // 👈 Liked buses screen
  ];

  Widget buildHome(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text(languageProvider.translate('app_title'))),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.directions_bus),
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
  }

  @override
  void initState() {
    super.initState();
    _startClock();
  }

  @override
  void dispose() {
    _clockTimer?.cancel();
    super.dispose();
  }

  void _startClock() {
    _updateTime();
    _clockTimer?.cancel();
    _clockTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _updateTime(),
    );
  }

  void _updateTime() {
    final now = DateTime.now();
    final formatted = DateFormat('hh:mm a').format(now);
    if (mounted) {
      setState(() {
        _currentTime = formatted;
      });
    }
  }

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
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xFF6B46C1), // Purple color
            elevation: 0,
            leading: Builder(
              builder:
                  (context) => IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
            ),
            title: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.directions_bus,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  "Punjab Bus Tracker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Center(
                  child: Text(
                    _currentTime,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Color(0xFF6B46C1)),
                  child: const Center(
                    child: Icon(Icons.person, color: Colors.white, size: 56),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.language, color: Color(0xFF6B46C1)),
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
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      icon: Icons.route,
                      label: languageProvider.translate('routes'),
                      isSelected: _selectedIndex == 0,
                      onTap: () => _onTabTapped(0),
                    ),
                    _buildNavItem(
                      icon: Icons.notifications,
                      label: languageProvider.translate('notifications'),
                      isSelected: _selectedIndex == 1,
                      onTap: () => _onTabTapped(1),
                    ),
                    _buildNavItem(
                      icon: Icons.favorite,
                      label: languageProvider.translate('liked_buses'),
                      isSelected: _selectedIndex == 2,
                      onTap: () => _onTabTapped(2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? const Color(0xFF6B46C1) : Colors.grey,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? const Color(0xFF6B46C1) : Colors.grey,
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
