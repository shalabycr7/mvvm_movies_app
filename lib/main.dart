import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/theme_data.dart';

import 'screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      theme: AppThemeData.lightTheme,
      home: const MoviesScreen(),
    );
  }
}
