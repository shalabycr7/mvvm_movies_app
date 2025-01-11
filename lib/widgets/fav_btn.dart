import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_icons.dart';

class FavBtn extends StatelessWidget {
  const FavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(AppIcons.fav),
      color: Colors.red,
      onPressed: () {},
    );
  }
}
