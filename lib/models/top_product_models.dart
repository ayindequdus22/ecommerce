class TopProductsModel {
  final String image;
  final String name;
  TopProductsModel( {required this.image,required this.name,});
}

// ignore: non_constant_identifier_names
List<TopProductsModel> Top_ProductsData = [
  TopProductsModel(image: 'assets/images/categoryImages/lingerie/lingerie (2).png',name:'Lingerie'),
  TopProductsModel(image: 'assets/images/categoryImages/clothCath/cloth (2).png', name: 'Top'),
  TopProductsModel(image: 'assets/images/categoryImages/shoeCath/shoe (2).png', name: 'Heels'),
  TopProductsModel(image: "assets/images/categoryImages/lingerie/lingerie (3).png", name:'Lingerie'),
  TopProductsModel(image: 'assets/images/categoryImages/shoeCath/shoe (3).png', name: 'Sneakers'),
  TopProductsModel(image: 'assets/images/categoryImages/lingerie/lingerie (2).png', name:'Lingerie'),
  TopProductsModel(image: 'assets/images/categoryImages/clothCath/cloth (3).png', name: 'Up n Down'),
  TopProductsModel(image: 'assets/images/categoryImages/shoeCath/shoe (4).png', name: 'Adidas'),
];
