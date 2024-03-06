import 'package:ecommerce/models/flashdeals_models.dart';
import 'package:ecommerce/widgets/flash_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/color.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({super.key});
  @override
  Widget build(BuildContext context) {
    List btnContnts = ["All", "10", "20", "30", "40", "50"];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: SafeArea(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flash Deals",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: bluish),
                        ),
                        Text(
                          "Choose your discount",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8,
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: const Text(
                            "40",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8,
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: const Text(
                            "40",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8,
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: const Text(
                            "40",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(66, 158, 158, 158),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  itemCount: btnContnts.length,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 18),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Text(
                            btnContnts[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: bluish,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Text(
                "All Products",
                style: TextStyle(fontSize: 24),
              ),
              const FlashWidget()
            ]),
          ),
        ),
      ),
    );
  }
}
