import 'package:ecommerce/models/flashdeals_models.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/color.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({super.key});
  @override
  Widget build(BuildContext context) {
    List btnContnts = ["All","10", "20", "30", "40", "50"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(66, 158, 158, 158),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  itemCount: btnContnts.length,physics: const NeverScrollableScrollPhysics(),
                  itemExtentBuilder: (index, dimensions) {return dimensions.precedingScrollExtent;},
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      // padding: EdgeInsets.only(left: double.maxFinite),
                      child: Row(
                        children: [
                          Text(
                            btnContnts[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: bluish,
                                fontSize: 18),
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
              SizedBox(
                height: 2450,
                child: GridView.builder(
                  itemCount: AllFlashDealsData.length,
                  physics: const RangeMaintainingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 1.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    String pricePercent = (AllFlashDealsData[index].price -
                            (AllFlashDealsData[index].price *
                                AllFlashDealsData[index].percentage /
                                100))
                        .toStringAsFixed(0);

                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(7),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 3,
                                        blurStyle: BlurStyle.outer)
                                  ],
                                ),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            AllFlashDealsData[index].image),
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 3, horizontal: 15),
                                    decoration: const BoxDecoration(
                                        color: pinkIsh,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10))),
                                    child: Text(
                                      "${AllFlashDealsData[index].percentage}%",
                                      style: const TextStyle(
                                        fontSize: 19.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                           Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                            child: Text(
                              "This product have ${AllFlashDealsData[index].percentage}% on each sale",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$$pricePercent',
                                style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: bluish,
                                    fontFamily: "Poppins"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  '\$${AllFlashDealsData[index].price}',
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
