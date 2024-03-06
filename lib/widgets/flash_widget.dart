import 'package:ecommerce/color.dart';
import 'package:ecommerce/models/flashdeals_models.dart';
import 'package:flutter/material.dart';

class FlashWidget extends StatelessWidget {
  const FlashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 2280,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          physics: const PageScrollPhysics(),
          itemCount: AllFlashDealsData.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 300,
            childAspectRatio: 1 / 1.7,
          ),
          itemBuilder: (context, index) {
            String pricePercent = (AllFlashDealsData[index].price -
                    (AllFlashDealsData[index].price *
                        AllFlashDealsData[index].percentage /
                        100))
                .toStringAsFixed(0);

            return SizedBox(
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
                              blurStyle: BlurStyle.outer,
                            ),
                          ],
                        ),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AllFlashDealsData[index].image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 15,
                          ),
                          decoration: const BoxDecoration(
                            color: pinkIsh,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            "${AllFlashDealsData[index].percentage}%",
                            style: const TextStyle(
                              fontSize: 19.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 5),
                    child: Text(
                      "This product has ${AllFlashDealsData[index].percentage}% on each sale",
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
                          fontFamily: "Poppins",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          '\$${AllFlashDealsData[index].price}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
