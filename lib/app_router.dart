import 'package:ecommerce/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const Text("Whatsup"));

      default:
        return null;
    }
  }
}
