import 'package:first_app/component/tehemes.dart';
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
      theme: ThemeManager.lightTheme(context),

      darkTheme: ThemeManager.darkTheme(context),
      initialRoute: '/home',
      routes: {
        MainRoute.homeRoute: (contex) => const HomePage(),
        MainRoute.loginRoute: (contex) => const LoginPage(),
        MainRoute.layoutRoute: (contex) => const Layout(),
      },
    );
  }
}
