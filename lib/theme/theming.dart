import 'package:flutter/material.dart';

class MyTheme {

  static const Color primaryColor = Colors.blue;

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white ,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.blue,
        fontSize: 30 ,
        fontWeight: FontWeight.bold ,
        fontFamily: "demo"
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      )
    )
  );
}