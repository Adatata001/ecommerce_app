class Category {
  final String name;
  final String image;

  const Category({required this.name, required this.image});
}

const categories = <Category>[
  Category(name: 'Hoodies',     image: 'images/hoodies.png'),
  Category(name: 'Shorts',      image: 'images/shorts.png'),
  Category(name: 'Shoes',       image: 'images/shoes.png'),
  Category(name: 'Bag',         image: 'images/bag.png'),
  Category(name: 'Accessories', image: 'images/accessories.png'),
];

