import 'package:flutter/material.dart';
import 'package:personaleco/color.dart';
import 'package:personaleco/pages/search_page.dart';
import 'package:personaleco/widgets/top_products.dart';
import 'package:personaleco/widgets/category.dart';
import 'package:personaleco/widgets/middle_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           
     appBar: AppBar(
  elevation: 10, // Adjust the elevation value as per your requirement
  shadowColor: const Color.fromARGB(97, 0, 0, 0),
  title: const Text(
    "E-Shop",
  ),
  actions: [
    Container(
      margin:const EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width * .7,
      height: 50,
      child: GestureDetector(
onTap: () {
  print("object");
  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
    return const SearchPage();
  }));
},
        child: const TextField(
          decoration: InputDecoration( 
            enabled: false,
            disabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
            ),
            hintText: 'Search Here',
            filled: true,
            suffixIcon: Icon(Icons.camera_alt_outlined, color: bluish,),
            fillColor: Color.fromARGB(17, 255, 255, 255),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.black12,
                style: BorderStyle.solid,
              ),
            ),
            hintStyle: TextStyle(fontSize: 20, color: Colors.white70),
          ),
        ),
      ),
    ),
  ],
),
 
      body: const SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
   
           MiddleWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Category(),
          ),Top_Products(),
        ])
      ),
    );
  }
}
