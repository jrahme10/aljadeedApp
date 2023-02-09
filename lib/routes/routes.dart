import 'package:flutter/material.dart';

import '../screens/splash_screen.dart';
import '../screens/home_screen.dart';
import '../screens/register.dart';
import '../screens/live.dart';

class Routes {
  static const String splashScreen = '/';
  static const String news = '/home/news';
  static const String register = '/register';
  static const String live = '/live';
}

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
            builder: (context) => const SplashScreen(), settings: settings);
      case Routes.news:
        return MaterialPageRoute(
            builder: (context) => const HomeScreen(), settings: settings);
      case Routes.register:
        return MaterialPageRoute(
            builder: (context) => const Register(), settings: settings);
      case Routes.live:
        return MaterialPageRoute(
            builder: (context) => const Live(), settings: settings);
    }
    return null;
  }
}
