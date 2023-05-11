import 'package:flutter/material.dart';

class MyTheme {
  static final Color lightGreenColor = Color(0XFFDFECDB);
  static final Color lightblueColor = Color(0XFF5d9cec);
  static final Color redColor = Color(0XFFec4b4b);
  static final Color greenColor = Color(0XFF8aed83);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: lightblueColor,
      scaffoldBackgroundColor: lightGreenColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 30),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        shape: CircularNotchedRectangle(),
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: lightblueColor
          ),
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 16
          )
        )

  );
}
