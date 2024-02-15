import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Top_Products extends StatelessWidget {
  const Top_Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        children: [
          const Text('Top Products',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height:70,
            child: ListView.builder(itemCount: 8,scrollDirection: Axis.horizontal,
                itemBuilder: ((BuildContext context, int index) {
              return Container(
                // width: MediaQuery.of(context).size.height ,
                width: 70,
                decoration: const BoxDecoration(
                  // image: DecorationImage(image: AssetImage('images/categoryImages/clothCath/cloth (4).png')),
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      color: Color.fromARGB(75, 0, 0, 0),
                      blurRadius: 4.0,
                    )
                  ],
                ),
                // child: ClipRect(clipBehavior: Clip.hardEdge,child: ,),
              //   child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(    decoration: const BoxDecoration(
              //     image: DecorationImage(image: AssetImage('images/categoryImages/clothCath/cloth (4).png')),
              //     ),
              //       // child: Image.asset('images/categoryImages/clothCath/cloth (4).png')),
              //   ),
              // )
              );
            })),
          )
        ],
      ),
    );
  }
}
