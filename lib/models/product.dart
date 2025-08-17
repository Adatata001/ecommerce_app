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
    image: 'images/man.png',
    price: 148.00,
  ),
  Product(
    name: "Max Cirro Men's Slides",
    image: 'images/slides.png',
    price: 55.00,
    oldPrice: 60.00,
  ),
    Product(
    name: "Men's Harrington Jacket",
    image: 'images/jacket.png',
    price: 148.00,
  ),
];
