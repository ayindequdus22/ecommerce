import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/models/flashdeals_models.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
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
                              fontSize: 18, fontWeight: FontWeight.w400),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                           decoration: const BoxDecoration(),
                      child: const Text(
                        'All',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: bluish,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: const Text(
                        '10%',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: const Text(
                        '20%',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: const Text(
                        '30%',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: const Text(
                        '40%',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: const Text(
                        '50%',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "All Products",
                    style: TextStyle(fontSize: 24),
                  )
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
