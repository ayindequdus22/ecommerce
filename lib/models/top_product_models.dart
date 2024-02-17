class TopProductsModel {
  final String image;
  final String name;
  TopProductsModel( {required this.image,required this.name,});
}

List<TopProductsModel> Top_ProductsData = [
  TopProductsModel(image: 'images/categoryImages/lingerie/lingerie (2).png',name:'Lingerie'),
  TopProductsModel(image: 'images/categoryImages/clothCath/cloth (2).png', name: 'Top'),
  TopProductsModel(image: 'images/categoryImages/shoeCath/shoe (2).png', name: 'Heels'),
  TopProductsModel(image: "images/categoryImages/lingerie/lingerie (3).png", name:'Lingerie'),
  TopProductsModel(image: 'images/categoryImages/shoeCath/shoe (3).png', name: 'Sneakers'),
  TopProductsModel(image: 'images/categoryImages/lingerie/lingerie (2).png', name:'Lingerie'),
  TopProductsModel(image: 'images/categoryImages/clothCath/cloth (3).png', name: 'Up n Down'),
  TopProductsModel(image: 'images/categoryImages/shoeCath/shoe (4).png', name: 'Adidas'),
];
