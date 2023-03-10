import 'package:first_app/pages/layput.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/router/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          )),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/layout',
      routes: {
        MainRoute.homeRoute: (contex) => const HomePage(),
        MainRoute.loginRoute: (contex) => const LoginPage(),
        MainRoute.layoutRoute: (contex) => Layout(),
      },
    );
  }
}
