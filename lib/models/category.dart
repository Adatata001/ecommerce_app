class Category {
  final String name;
  final String image;

  const Category({required this.name, required this.image});
}

const categories = <Category>[
  Category(name: 'Hoodies',     image: 'assets/images/hoodie.png'),
  Category(name: 'Accessories', image: 'assets/images/accessories.png'),
  Category(name: 'Shorts',      image: 'assets/images/shorts.png'),
  Category(name: 'Shoes',       image: 'assets/images/shoes.png'),
  Category(name: 'Bag',         image: 'assets/images/bag.png'),
];
