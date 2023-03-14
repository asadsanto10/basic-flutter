class Products {
  final int id;
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

class CatalogModal {
  static final products = [
    Products(
      id: 1,
      color: '#ff5656',
      description: "An apple mobile which is nothing like apple",
      image: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
      name: 'iPhone 9',
      price: 1212,
    ),
    Products(
      id: 2,
      color: '#ff5656',
      description: "An apple mobile which is nothing like apple",
      image: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
      name: 'iPhone 10',
      price: 1212,
    ),
    Products(
      id: 3,
      color: '#ff5656',
      description: "An apple mobile which is nothing like apple",
      image: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
      name: 'iPhone 11',
      price: 1212,
    ),
    Products(
      id: 4,
      color: '#ff5656',
      description: "An apple mobile which is nothing like apple",
      image: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
      name: 'iPhone 12',
      price: 1212,
    ),
  ];
}
