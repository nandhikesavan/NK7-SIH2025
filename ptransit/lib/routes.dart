import 'package:flutter/material.dart';
import 'features/tracking/presentation/screens/map_screen.dart';
import 'features/tracking/presentation/screens/route_details_screen.dart';
import 'features/notifications/presentation/screens/notification_screen.dart';
import 'features/language/presentation/screens/language_selection_screen.dart';
import 'features/voice_assistant/presentation/screens/voice_command_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/map': (context) => MapScreen(),
  '/routeDetails': (context) => RouteDetailsScreen(),
  '/notifications': (context) => NotificationScreen(),
  '/language': (context) => LanguageSelectionScreen(),
  '/voice': (context) => VoiceCommandScreen(),
};
