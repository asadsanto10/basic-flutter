import 'dart:convert';

import 'package:first_app/models/products.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(Duration(seconds: 18118));
    final data = await rootBundle.loadString('assets/data/products.json');

    final decodData = json.decode(data);
    final productData = decodData['products'];
    print('Catalog modal $CatalogModal.products');
    CatalogModal.products = List.from(productData)
        .map<Products>((item) => Products.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int days = 30;
    // make dummy product
    // final dummyProduct = List.generate(50, (index) => CatalogModal.products[0]);
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: (CatalogModal.products != null)
            ? ListView.builder(
                itemCount: CatalogModal.products.length,
                itemBuilder: (context, index) {
                  return ProductWidget(
                    products: CatalogModal.products[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const SideDrawer(),
    );
  }
}
