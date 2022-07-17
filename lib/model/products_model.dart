class Product {
  String name;
  String category;
  String price;
  String url;

  Product({
    required this.name,
    required this.url,
    required this.category,
    required this.price,
  });
}

var products = [
  Product(
    name: 'Iphone 12 Pro',
    category: 'Iphone',
    price: 'Rp. 20.000.000,00',
    url: 'assets/images/iphone1-2.png',
  ),
  Product(
    name: 'Iphone 13 Pro Max',
    category: 'Iphone',
    price: 'Rp. 23.000.000,00',
    url: 'assets/images/iphone1-3.png',
  ),
  Product(
    name: 'Iphone 13 Pro',
    category: 'Iphone',
    price: 'Rp. 21.000.000,00',
    url: 'assets/images/iphone1-4.png',
  ),
];
