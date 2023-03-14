// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:first_app/models/products.dart';

class ProductWidget extends StatelessWidget {
  final Products products;

  const ProductWidget({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        child: ListTile(
          leading: Image.network(products.image),
          title: Text(products.name),
          subtitle: Text(products.description),
          trailing: Text('\$${products.price}'),
        ),
      ),
    );
  }
}
