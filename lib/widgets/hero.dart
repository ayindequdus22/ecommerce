import 'package:flutter/material.dart';
import 'package:personaleco/models/hero_models.dart';
class HeroWidgetController {
  final PageController pageController = PageController(initialPage: 0);

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void previousPage() {
    pageController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override

    
  final HeroWidgetController controller = HeroWidgetController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: Stack(
            children: [
              PageView.builder(
                itemCount: HeroModelData.length,
                controller: controller.pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(HeroModelData[index].image),
                            fit: BoxFit.cover)),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "E-shop",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    HeroModelData.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          controller.pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          margin:const EdgeInsets.symmetric(horizontal: 4),
                          width: index == currentPage
                              ? 30
                              : 20,
                          height:10 ,
                        decoration: BoxDecoration(color: index == currentPage
                              ? Colors.blue
                              : Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)
                              ),
                          
                        ),

                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
