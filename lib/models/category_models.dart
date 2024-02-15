class ClothCategoryModel {
  final String image;
final String text;
final String percent;
  ClothCategoryModel(  {required this.image,required this.text,required this.percent,});
}

// ignore: non_constant_identifier_names
List<ClothCategoryModel> ClothCath = [
  ClothCategoryModel(image: 'images/categoryImages/clothCath/cloth (1).png',text:'Clothes', percent: '-10%'),
   ClothCategoryModel(image: 'images/categoryImages/shoeCath/shoe (1).png',text:'Shoes', percent: '-5%'),
    ClothCategoryModel(image: 'images/categoryImages/lingerie/lingerie (1).png',text:'Lingerie', percent: '-25%'),

  // ClothCategoryModel(image: 'images/categoryImages/clothCath/cloth (2).png'),
  // ClothCategoryModel(image: 'images/categoryImages/clothCath/cloth (3).png'),
  ClothCategoryModel(image: 'images/categoryImages/clothCath/cloth (4).png',text:'Bags', percent: '-10%')
];

// class ShoeCategoryModel {
//   final String image;

//   ShoeCategoryModel({required this.image});
// }

// // ignore: non_constant_identifier_names
// List<ClothCategoryModel> ShoeCath = [
 
//   ClothCategoryModel(image: 'images/categoryImages/shoeCath/shoe (2).png'),
//   ClothCategoryModel(image: 'images/categoryImages/shoeCath/shoe (3).png'),
//   ClothCategoryModel(image: 'images/categoryImages/shoeCath/shoe (4).png'),
// ];

// class LingerieCategoryModel {
//   final String image;

//   LingerieCategoryModel({required this.image});
// }

// // ignore: non_constant_identifier_names
// List<ClothCategoryModel> LingerieCath = [
//   ClothCategoryModel(image: 'images/categoryImages/lingerie/lingerie (1).jpg'),
//   ClothCategoryModel(image: 'images/categoryImages/lingerie/lingerie (2).png'),
//   ClothCategoryModel(image: 'images/categoryImages/lingerie/lingerie (3).png'),
// ];
