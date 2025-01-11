import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_movies_app/constants/app_icons.dart';

class CachedImageWidget extends StatelessWidget {
  const CachedImageWidget(
      {super.key, required this.imageUrl, this.height, this.width, this.fit});

  final String imageUrl;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return CachedNetworkImage(
      width: width ?? size.width * 0.3,
      height: height ?? size.height * 0.2,
      fit: fit ?? BoxFit.cover,
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const Icon(AppIcons.error),
    );
  }
}
