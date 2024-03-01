import 'package:ecommerce/pages/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const Text("Whatsup"));

      default:
        return null;
    }
  }
}
