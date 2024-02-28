import 'package:flutter/material.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/flash_deals.dart';
import 'package:ecommerce/widgets/product.dart';
import 'package:ecommerce/widgets/favorite.dart';
import '../widgets/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
   List<Widget> page =const[ HomePage(),FlashDeals(),Favorite(),CartPage(),Product()];


 
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: IndexedStack(index: selectedIndex,children: page,),

      bottomNavigationBar: Container(
        margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration( color: Colors.black,borderRadius: BorderRadius.circular(10)),
       height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon:const Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
              color: selectedIndex == 0 ? Colors.white : Colors.grey,
            ),
            IconButton(
              icon:const Icon(Icons.alarm_outlined),
              onPressed: () => _onItemTapped(1),
              color: selectedIndex == 1 ? Colors.white : Colors.grey,
            ), 
             IconButton(
                  icon:const Icon(Icons.favorite),
                  onPressed: () => _onItemTapped(2),
                  color: selectedIndex == 2 ? Colors.white : Colors.grey,
           
            ),
             IconButton(
                  icon:const Icon(Icons.shopping_cart),
                  onPressed: () => _onItemTapped(3),
                  color: selectedIndex == 3 ? Colors.white : Colors.grey,
           
            ),
            IconButton(
                  icon:const Icon(Icons.person),
                  onPressed: () => _onItemTapped(4),
                  color: selectedIndex == 4 ? Colors.white : Colors.grey,
           
            ),
               
          ],
        ),
      ),
    );
  }
}
