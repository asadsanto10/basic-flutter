import 'package:first_app/models/products.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fisrt App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   title: const Text(
      //     'Fisrt App',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: Container(
      //     child: Text.rich(TextSpan(
      //         text: 'Hello world $days hey',
      //         children: const <TextSpan>[
      //           TextSpan(
      //               text: ' Beautiful',
      //               style: TextStyle(fontWeight: FontWeight.bold))
      //         ])),
      //   ),
      // ),
      body: ListView.builder(
          itemCount: CatalogModal.products.length,
          itemBuilder: (context, index) {
            return ProductWidget(
              products: CatalogModal.products[index],
            );
          }),
      drawer: const SideDrawer(),
    );
  }
}
