import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_constants.dart';
import 'package:mvvm_movies_app/widgets/movies/cached_image.dart';
import 'package:mvvm_movies_app/widgets/movies/fav_btn.dart';
import 'package:mvvm_movies_app/widgets/movies/genres_list_widget.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                height: size.height * 0.5,
                width: double.infinity,
                child: CachedImageWidget(imageUrl: AppConstants.movieImageUrl)),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.4,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 50),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            spacing: 15,
                            children: [
                              Text(
                                'Movie Title',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.w500),
                              ),
                              Row(
                                spacing: 5,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text('8/10'),
                                  Spacer(),
                                  Text('release date'),
                                ],
                              ),
                              GenresListWidget(),
                              Text(
                                'Movie Description' * 10,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: FavBtn(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton.filled(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          ],
        ),
      ),
    );
  }
}
