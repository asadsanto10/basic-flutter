class Products {
  final String id;
  final String name;
  final String description;
  final String color;
  final num price;
  final String image;

  Products({
    required this.id,
    required this.name,
    required this.description,
    required this.color,
    required this.price,
    required this.image,
  });
}

final products = [
  Products(
    id: '1',
    color: '#ff5656',
    description: "An apple mobile which is nothing like apple",
    image: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
    name: 'iPhone 9',
    price: 1212,
  ),
];
