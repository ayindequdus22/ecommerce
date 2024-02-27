import 'package:flutter/material.dart';
import 'package:personaleco/app_router.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/data_class.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context)=> DataClass(),
    child: MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          
        ),
        // scaffoldBackgroundColor: const Color.fromARGB(255, 250, 232, 238),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          // .fromARGB(255, 231, 0, 77),
          toolbarHeight:100,
        
          iconTheme: IconThemeData(color: Colors.white, size: 35),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: bluish,
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    ));
  }
}
