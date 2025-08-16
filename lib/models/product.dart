class Product {
  final String name;
  final String image;
  final double price;
  final double? oldPrice;
  const Product({
    required this.name,
    required this.image,
    required this.price,
    this.oldPrice,
  });
}

const products = <Product>[
  Product(
    name: "Men's Harrington Jacket",
    image: 'assets/images/jacket.png',
    price: 148.00,
  ),
  Product(
    name: "Max Cirro Men's Slides",
    image: 'assets/images/slides.png',
    price: 55.00,
    oldPrice: 60.00,
  ),
];
