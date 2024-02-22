import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
// import 'package:personaleco/models/flashdeals_models.dart';

class FlashDeals extends StatelessWidget {
  const FlashDeals({super.key});
  @override
  Widget build(BuildContext context) {
const currentPage = 0;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "All Products",
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                    height: 600,
                    child: GridView.builder(
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, crossAxisSpacing: 10,mainAxisSpacing: 20,),itemCount: 8,
                              itemBuilder: (context, index) {
                                return Column(    children: [
                        Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(7),
                              height: 400,
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
                                height: 400,
                                  decoration: const BoxDecoration(
                                     image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/flashDeals/flashDeals (1).png'),fit: BoxFit.cover
                                        ),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                
                                ),
                            ),
                            Positioned(top: 0,right:0, child: Container(padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 15),
                              decoration: const BoxDecoration(color: bluish,borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
                              child:const Text("20%",style: TextStyle(fontSize: 19.0,color: Colors.white,),),))
                          ],
                        ),
                     ],
                   );
                              },
                   ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
