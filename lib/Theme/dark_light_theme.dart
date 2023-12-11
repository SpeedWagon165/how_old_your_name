import 'package:flutter/material.dart';

final kDarkMode = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.white,
  appBarTheme:
      const AppBarTheme(backgroundColor: Colors.black, centerTitle: true),
  primaryTextTheme: const TextTheme(
    titleMedium: TextStyle(
        fontFamily: 'beer_money',
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 20),
    titleLarge: TextStyle(
      fontFamily: 'beer_money',
      color: Colors.white,
      fontWeight: FontWeight.w900,
      fontSize: 40,
    ),
  ),
);

final kLightMode = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.black,
  appBarTheme:
      const AppBarTheme(backgroundColor: Colors.white, centerTitle: true),
  primaryTextTheme: const TextTheme(
    titleMedium: TextStyle(
      fontFamily: 'beer_money',
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 20,
    ),
    titleLarge: TextStyle(
      fontFamily: 'beer_money',
      color: Colors.black,
      fontWeight: FontWeight.w900,
      fontSize: 40,
    ),
  ),
);
