import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_icons.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.fav),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(AppIcons.darkMode),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text('movies'),
      ),
    );
  }
}
