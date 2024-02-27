// ignore_for_file: non_constant_identifier_names

class AllFlashDealsModel {
  final String image;
  final int price;
  
  final int percentage;

  AllFlashDealsModel({required this.image, required this.price,required this.percentage});
}

List<AllFlashDealsModel> AllFlashDealsData= [
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (1).png', price: 600, percentage: 50),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (3).png', price: 700, percentage: 40),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (4).png', price: 1400, percentage: 20),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (5).png', price: 2500, percentage: 10),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (6).png', price: 3300, percentage: 30),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (7).png', price: 1200, percentage: 40),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (8).png', price: 800, percentage: 50),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (9).png', price: 1200, percentage: 30),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (10).png', price: 2000, percentage: 20),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (11).png', price: 4000, percentage: 20),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (12).png', price: 2500, percentage: 20),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (13).png', price: 800, percentage: 40),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (14).png', price: 3000, percentage: 10),
AllFlashDealsModel(image: 'assets/images/flashDeals/flashDeals (15).png', price: 1600, percentage: 20),
];
class DiscountModel {
  DiscountModel({required this.text});
  final String text;
}
List<DiscountModel> DiscountModelsData =[
DiscountModel(text: "All"),
DiscountModel(text: "10%"),
DiscountModel(text: "20%"),
DiscountModel(text: "30%"),
DiscountModel(text: "40%"),
DiscountModel(text: "50%"),
];