import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/domain/models/post_model.dart';
import 'package:test_3/core/presentation/constants/constants.dart';

class PostImage extends StatelessWidget {
  const PostImage({super.key, required this.post});
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: S.s335 / S.s220,
      child: CachedNetworkImage(
        imageUrl: post.mediaUrl.toString(),
        errorWidget: (context, url, error) => DecoratedBox(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(R.r17)),
        ),
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(R.r17),
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
