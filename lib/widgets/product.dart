import 'package:flutter/material.dart';
import 'package:ecommerce/color.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child:  Center(
      child: Text(
        "Cart",
        style: TextStyle(color: bluish, fontSize: 40),
      ),
    ));
  }
}
