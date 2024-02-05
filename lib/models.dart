class CarouselD {
  String image;
  String text;

  CarouselD({required this.image, required this.text});
}

final carouselData = [
  CarouselD(image: "images/image-4.jpg", text: "Order Now"),
  CarouselD(image: "images/image-2.jpg", text: "Order Now"),
  CarouselD(image: "images/banner-3.png", text: "Order Now"),
];

class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });
}

List<Product> productsData = [
  Product(
      id: '1',
      name: 'Shirt',
      price: 19.99,
      image: "images/assetA/p1_product.png"),
  Product(
      id: '2',
      name: 'Crop Top',
      price: 24.61,
      image: "images/assetA/product_4.png"),
  Product(id: '3', name: 'Pants', price: 49.99, image: "images/8.jpg"),
  Product(id: '4', name: 'Crop Top', price: 23.54, image: "images/image-3.jpg"),
  // Add more products as needed
];
