import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themeData = ThemeData(
    primarySwatch: Colors.pink,
    primaryColor: Colors.pink.shade400,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink.shade400,
        textStyle: const TextStyle(fontSize: 18),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.pink.shade400,
        textStyle: const TextStyle(fontSize: 18),
      ),
    ),
  );
}
