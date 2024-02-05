import 'package:flutter/material.dart';
import 'package:personaleco/widgets/product.dart';
import 'package:personaleco/widgets/favorite.dart';
import '../widgets/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    super.initState();
    page = [const HomePage(), const Favorite(), const Product()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.dehaze_outlined),
            title: const Text("Anteqs e-Shop"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/cart');
                    },
                    icon: const Icon(Icons.shopping_cart)),
              )
            ]),
        body: page[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },

          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:const TextStyle(
            color: Colors.white,
          ),
          unselectedLabelStyle:const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectedIndex == 0 ? Colors.white : Colors.black,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: selectedIndex == 1 ? Colors.white : Colors.black,
              ),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_rounded,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
              ),
              label: "Product",
            ),
          ],
        ),
        );
  }
}
