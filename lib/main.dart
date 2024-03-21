import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_tracker_app/screens/home_screen.dart';
import 'package:plant_tracker_app/screens/login_screen.dart';
import 'package:plant_tracker_app/screens/settings_screen.dart';

void main() {
  runApp(const PlantTrackerApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingsScreen();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
);

class PlantTrackerApp extends StatelessWidget {
  const PlantTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
