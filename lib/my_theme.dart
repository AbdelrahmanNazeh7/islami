import 'package:flutter/material.dart';

class MyThemeData {
  static const colorBlack = Color.fromARGB(255, 36, 36, 36);
  static const mainColor = Color.fromARGB(255, 183, 147, 95);
  static var lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: mainColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: mainColor,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: colorBlack,
      ),
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
        headline1: TextStyle(
          color: colorBlack,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(fontSize: 24, color: colorBlack)),
  );
  static var darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.red,
      elevation: 0,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: colorBlack,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
