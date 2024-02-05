import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/pages/cart_page.dart';
import 'package:personaleco/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: const Color.fromARGB(255, 250, 232, 238),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 231, 0, 77),
          toolbarHeight: 80,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white, size: 35),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: pinkIsh,
        ),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
