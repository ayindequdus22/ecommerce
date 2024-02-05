import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/models.dart';
import 'package:personaleco/pages/product_page.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 23, left: 10.0),
      child: Container(
        height: 600,
        child: GridView.builder(
            itemCount: productsData.length,
            itemBuilder: ((BuildContext context, index) {
              return Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        color: Color.fromARGB(75, 0, 0, 0),
                        blurRadius: 4.0,
                      )
                    ],
                    color: Color.fromARGB(55, 0, 0, 0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          productsData[index].image,
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                          height: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            children: [
                              Text(
                                productsData[index].name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  productsData[index].price.toString(),
                                  style: const TextStyle(
                                      color: pinkIsh, fontSize: 18),
                                ),
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: pinkIsh,
                                    fixedSize: const Size(150, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const Product_Page();
                                      },
                                    ));
                                  },
                                  child: Container(
                                    child: const Text(
                                      "Order Now",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
            }),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                childAspectRatio: 1 / 1.52)),
      ),
    );
  }
}
