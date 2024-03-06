import 'package:ecommerce/app_router.dart';
import 'package:ecommerce/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          iconTheme: IconThemeData(color: Colors.white, size: 35),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: bluish,
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
