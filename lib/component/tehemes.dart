import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static ThemeData lightTheme(BuildContext contex) => ThemeData(
      primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext contex) => ThemeData(
        brightness: Brightness.dark,
      );
}
