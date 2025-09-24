import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/features/post/domain/models/post/post_model.dart';

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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(S.s17)),
        ),
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(S.s17),
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
