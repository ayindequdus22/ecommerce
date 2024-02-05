import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      automaticallyImplyLeading: true,
      leading: Row(
        children: [
          IconButton(onPressed:(){
            Navigator.pop(context);
          } ,icon:const Icon(Icons.arrow_back_ios_rounded)),
        ],
      ),
      // title: Text("Cart"),
      actions:const [Icon(Icons.search)],
    ));
  }
}
