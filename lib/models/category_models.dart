import 'package:flutter/material.dart';
import 'package:personaleco/pages/categoryPage/bag_pages.dart';
import 'package:personaleco/pages/categoryPage/cloth_pages.dart';
import 'package:personaleco/pages/categoryPage/lingerie_page.dart';
import 'package:personaleco/pages/categoryPage/shoes_pages.dart';

class ClothCategoryModel {
  final String image;
final String text;
final Widget page;
final String percent;
  ClothCategoryModel(  {required this.image,required this.text,required this.percent, required this.page,});
}

// ignore: non_constant_identifier_names
List<ClothCategoryModel> ClothCath = [
  ClothCategoryModel(image: 'assets/images/categoryImages/clothCath/cloth (1).png',text:'Clothes', percent: '-10%',page:const ClothesPage()),
   ClothCategoryModel(image: 'assets/images/categoryImages/shoeCath/shoe (1).png',text:'Shoes', percent: '-5%', page: const ShoesPage()),
    ClothCategoryModel(image: 'assets/images/categoryImages/lingerie/lingerie (1).png',text:'Lingerie', percent: '-25%', page: const LingeriePage()),
 ClothCategoryModel(image: 'assets/images/categoryImages/clothCath/cloth (4).png',text:'Bags', percent: '-10%', page: const BagsPage())
];


