import 'package:flutter/material.dart';
import 'package:ecommerce/color.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child:  Center(
      child: Text("Favorite", style: TextStyle(color: bluish, fontSize: 40)),
    ));
  }
}
