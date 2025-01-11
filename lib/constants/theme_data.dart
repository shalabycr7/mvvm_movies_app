import 'package:flutter/material.dart';

class AppThemeData {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
  );
}
