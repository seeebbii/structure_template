import 'package:flutter/material.dart';
import 'package:revision/constants/colors.dart';


ThemeData appTheme = ThemeData(
  fontFamily: 'Avenir',
    primaryTextTheme: const TextTheme(
      headline5: TextStyle(
        fontFamily: 'Akira',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Avenir',
        fontSize: 14,
        color: Colors.black,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'Avenir',
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    ),
    primaryColor: yellow,
    accentColor: orange,
    scaffoldBackgroundColor: Colors.white,
    cardColor: blue,
    dividerColor: Colors.grey.shade700,
    focusColor: yellow,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: orange,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: orange,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: orange,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: orange, elevation: 5));
