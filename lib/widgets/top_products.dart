// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:personaleco/models/top_product_models.dart';

class Top_Products extends StatelessWidget {
  const Top_Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Top Products',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 100,
            child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: ((BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Color.fromARGB(75, 0, 0, 0),
                              blurRadius: 4.0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 30,
                              backgroundImage:
                                  AssetImage(Top_ProductsData[index].image),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top:8.0),
                         child: Text(Top_ProductsData[index].name,style: const TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                       )
                    ],
                  );
                })),
          )
        ],
      ),
    );
  }
}
