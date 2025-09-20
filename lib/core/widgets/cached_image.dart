import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:test_3/core/extensions/extensions.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.imageUrl,
    this.borderRadius,
    required this.width,
    required this.height,
  });

  final String imageUrl;
  final double? borderRadius;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => _GrayCircle(borderRadius: borderRadius),
        errorWidget: (context, url, error) => _GrayCircle(borderRadius: borderRadius),
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: borderRadius != null
                ? BorderRadius.circular(borderRadius!)
                : BorderRadius.zero,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class _GrayCircle extends StatelessWidget {
  const _GrayCircle({required this.borderRadius});

  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.color.bgOverlay,
        borderRadius: borderRadius != null
            ? BorderRadius.circular(borderRadius!)
            : BorderRadius.zero,
      ),
    );
  }
}
