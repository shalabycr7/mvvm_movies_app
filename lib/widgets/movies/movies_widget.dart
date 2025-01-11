import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_constants.dart';
import 'package:mvvm_movies_app/constants/app_icons.dart';
import 'package:mvvm_movies_app/widgets/movies/cached_image.dart';
import 'package:mvvm_movies_app/widgets/movies/fav_btn.dart';
import 'package:mvvm_movies_app/widgets/movies/genres_list_widget.dart';

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: CachedImageWidget(
                  imageUrl: AppConstants.movieImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Movie Title',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Icon(
                        AppIcons.rate,
                        color: Colors.amber,
                      ),
                      Text('8/10'),
                    ],
                  ),
                  GenresListWidget(),
                  Row(
                    spacing: 5,
                    children: [
                      Icon(
                        AppIcons.timer,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Text(
                        'release date',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(
                                color: Theme.of(context).colorScheme.secondary),
                      ),
                      Spacer(),
                      FavBtn(),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
