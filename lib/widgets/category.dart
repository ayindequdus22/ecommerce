import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/color.dart';
import 'package:ecommerce/models/category_models.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
         padding:  const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
         child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
               Row(
                children: [
                  const Text("See All",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    Container(
                    height: 30,
                    width: 30,margin: const EdgeInsets.only(left: 14),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: bluish,
                    ),
                    
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>const Text("olllls")));
                      },
                      padding: EdgeInsets.zero,
                      child: const Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
       ),
        Card.outlined(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // height: 500,
            child: Container(
              height: MediaQuery.of(context).size.height * .433,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1 / 1),
                  itemCount: ClothCath.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return ClothCath[index].page;
                        }));
          
                      },
                      child: Stack(children: [
                        Container(
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ClothCath[index].image)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: const [
                                BoxShadow(
                                  blurStyle: BlurStyle.outer,
                                  color: Color.fromARGB(75, 0, 0, 0),
                                  blurRadius: 4.0,
                                )
                              ]),
                        ),
                        Positioned(
                            left: 4,
                            top: 6,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                ClothCath[index].text,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                        Positioned(
                            right: 4,
                            bottom: 6,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                  color: bluish,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                ClothCath[index].percent,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ))
                      ]),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
