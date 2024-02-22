import 'package:flutter/material.dart';
import 'package:personaleco/pages/cart_page.dart';
import 'package:personaleco/pages/home_screen.dart';

class AppRouter{
  Route? onGenerateRoute(RouteSettings settings){
switch (settings.name) {
  case '/':
    return MaterialPageRoute(builder: (_)=> const HomeScreen());
   case '/cart':
    return MaterialPageRoute(builder: (_)=> const CartPage());
    
  default:
  return null;
}
  }
}