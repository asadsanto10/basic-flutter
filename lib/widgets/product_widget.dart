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
      padding: const EdgeInsets.fromLTRB(15.0, 2, 15.0, 2),
      child: Card(
        elevation: 2,
        child: ListTile(
          onTap: () {
            print('${products.name}');
          },
          leading: Image.network(products.image),
          title: Text(products.name),
          subtitle: Text(products.desc),
          trailing: Text(
            '\$${products.price}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
    );
  }
}
