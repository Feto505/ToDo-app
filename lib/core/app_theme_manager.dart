import 'package:flutter/material.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFDFECDB),
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          // fontFamily: "ElMessiri",
          color: Colors.white
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        // fontFamily: "ElMessiri",
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        // fontFamily: "ElMessiri",
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        // fontFamily: "ElMessiri",
        color: Colors.white,

      ),


    ),
  );


}