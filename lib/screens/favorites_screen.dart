import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_icons.dart';
import 'package:mvvm_movies_app/widgets/movies_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Movies'),
        actions: [
          IconButton(
            icon: const Icon(AppIcons.delete),
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return MoviesWidget();
          }),
    );
  }
}
