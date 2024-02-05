import 'package:flutter/material.dart';
import 'package:personaleco/models.dart';

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
    required this.data,
  });
  final CarouselD data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.width * 0.5,
          margin: const EdgeInsets.only(right: 8.0),
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(data.image), fit: BoxFit.cover)),
        ),
        Positioned(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.width * 0.5,
          decoration:const BoxDecoration(color: Color.fromARGB(87, 0, 0, 0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text(
                "Nice Clothing",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {},
                  child: const Text("Order Now",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
