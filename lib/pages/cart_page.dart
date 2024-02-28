import 'package:flutter/material.dart';
import 'package:ecommerce/data_class.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: true,
      //   leading: Row(
      //     children: [
      //       IconButton(
      //           onPressed: () {
      //             Navigator.pop(context);
      //           },
      //           icon: const Icon(Icons.arrow_back_ios_rounded)),
      //     ],
      //   ),
        // title: Text("Cart"),
      //   actions: const [Icon(Icons.search)],
      // ),
      body: Column(
        
        children: [
          // Consumer<DataClass>(
          //   builder: (context, dataClass, child) {
          //     return Text('${dataClass.x}');
          //   },
          // ),
          // GestureDetector(
          //   onTap: (){
          //     Provider.of<DataClass>(context,listen: false).increment();
          //   },
          //   child:const Icon(Icons.plus_one),
          // )
        ],
      ),
    );
  }
}
