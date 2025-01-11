import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_constants.dart';

class GenresListWidget extends StatelessWidget {
  const GenresListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: AppConstants.genres
          .map((genre) => chipWidget(genre, context))
          .toList(),
    );
  }

  Widget chipWidget(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Chip(
        padding: const EdgeInsets.all(2.0),
        label: Text(title),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
