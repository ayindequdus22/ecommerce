import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/models.dart';
import 'package:personaleco/widgets/overview.dart';
import 'package:personaleco/widgets/carousel.dart';
import 'package:personaleco/widgets/middle_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        const MiddleWidget(),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, top: 30),
          physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast,
          ),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: carouselData.map((e) => Carousel(data: e)).toList(),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Overview",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Overview()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
