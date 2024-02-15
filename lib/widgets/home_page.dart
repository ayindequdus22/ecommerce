import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/models/models.dart';
import 'package:personaleco/widgets/top_products.dart';
import 'package:personaleco/widgets/category.dart';
import 'package:personaleco/widgets/middle_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Container(
        //   decoration: const BoxDecoration(color: pinkIsh),
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       height: 70,
        //       decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(10),
        //           border: Border.all(
        //               color: pinkIsh, width: 2, style: BorderStyle.solid)),
        //       child: TextField(
        //         decoration: InputDecoration(
        //             border: OutlineInputBorder(
        //               borderSide: BorderSide.none,
        //               borderRadius: BorderRadius.circular(10),
        //             ),
        //             hintText: "Search here...",
        //             hintStyle: const TextStyle(color: pinkIsh, fontSize: 20),
        //             suffixIcon: const Icon(
        //               Icons.search_sharp,
        //               color: pinkIsh,
        //               size: 40,
        //             )),
        //       ),
        //     ),
        //   ),
        // ),
         MiddleWidget(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Category(),
        ),Top_Products(),
      ])
    );
  }
}
