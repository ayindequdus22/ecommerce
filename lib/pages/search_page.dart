import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        actions: [

        ],
      ) ,
      // body:        
      // Container(
      //       decoration: const BoxDecoration(color: bluish),
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           height: 70,
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(10),
      //               border: Border.all(
      //                   color: bluish, width: 2, style: BorderStyle.solid)),
      //           child: TextField(
      //             decoration: InputDecoration(
      //                 border: OutlineInputBorder(
      //                   borderSide: BorderSide.none,
      //                   borderRadius: BorderRadius.circular(10),
      //                 ),
      //                 hintText: "Search here...",
      //                 hintStyle: const TextStyle(color: bluish, fontSize: 20),
      //                 suffixIcon: const Icon(
      //                   Icons.search_sharp,
      //                   color: bluish,
      //                   size: 40,
      //                 )),
      //           ),
      //         ),
      //       ),
          // ),
    );
  }
}