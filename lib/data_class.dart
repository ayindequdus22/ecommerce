import 'package:flutter/material.dart';

class DataClass extends ChangeNotifier{
  // List _store = [];
  // List get store=> _store;
  // void addToCart(value){
  //   _store.add(value);
  //   notifyListeners();
  // }
 int _x=0;
  int get x => _x;
  void increment(){
    _x++;
notifyListeners();
  }
} 