import 'package:flutter/material.dart';

Color appBackgroundColor = Colors.blue.shade50;

ThemeData buildDarkThemeData() {
  return ThemeData(
      scaffoldBackgroundColor: appBackgroundColor,
      brightness: Brightness.dark,
      appBarTheme: buildAppBarThemeData(),
      textTheme: buildBodyTextThemeData(),
      floatingActionButtonTheme: buildFloatingActionButtonThemeData());
}

ThemeData buildLightThemeData() {
  return ThemeData(
      scaffoldBackgroundColor: appBackgroundColor,
      brightness: Brightness.light,
      appBarTheme: buildAppBarThemeData(),
      textTheme: buildBodyTextThemeData(),
      floatingActionButtonTheme: buildFloatingActionButtonThemeData());
}



FloatingActionButtonThemeData buildFloatingActionButtonThemeData() {
  return FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 16,
        splashColor: Colors.green);
}

TextTheme buildBodyTextThemeData() {
  return TextTheme(
        bodyMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 50));
}

AppBarTheme buildAppBarThemeData() {
  return AppBarTheme(
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            wordSpacing: 5),
        elevation: 16,
        shadowColor: Colors.grey);
}

