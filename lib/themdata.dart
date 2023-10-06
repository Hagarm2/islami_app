import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mythemdata {
  static Color primarycolor = Color(0xffB7935F);
  static Color darkprimarycolor = Color(0xff141A2E);
  static Color yellowcolor = Color(0xfffacc1d);

  static Color blackcolor = Colors.black;
  static ThemeData lightthem = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff242424)),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Color(0xff242424)),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424))),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Color(0xffB7935F)),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
  );
  static ThemeData darkthem = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff)),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xfffacc1d)),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xfffacc1d))),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: darkprimarycolor,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yellowcolor, unselectedItemColor: Colors.white));
}
