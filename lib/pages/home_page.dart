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
          child: Text.rich(TextSpan(
              text: 'Hello world $days hey',
              children: const <TextSpan>[
                TextSpan(
                    text: ' Beautiful',
                    style: TextStyle(fontWeight: FontWeight.bold))
              ])),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
