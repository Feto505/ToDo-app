import 'package:flutter/material.dart';

class AppThemeManager {
  static const Color primaryGreenColor = Color(0xFFDFECDB);
  static const Color primaryBlueColor = Color(0xFF5D9CEC);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryGreenColor,
    primaryColorLight: primaryBlueColor,
    scaffoldBackgroundColor: primaryGreenColor,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: Colors.white,
        )),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          color: Colors.white
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: "Poppins",
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: "Poppins",
        color: Colors.black54,
      ),
      displaySmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: "Poppins",
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
        color: Colors.white,
      ),
    ),
  );


}