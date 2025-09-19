import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
        placeholder: (context, url) => ColoredBox(color: context.color.negativeUniversal),
        errorWidget: (context, url, error) => DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.bgOverlay,
            borderRadius: borderRadius != null
                ? BorderRadius.circular(borderRadius!)
                : BorderRadius.zero,
          ),
        ),
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
