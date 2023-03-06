import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fisrt App'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello world $days hey'),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
