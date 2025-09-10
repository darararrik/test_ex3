import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:test_3/core/presentation/utils/utils.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.assetName, {
    super.key,
    this.width,
    this.height,
    this.color,
    this.fit,
  });
  final String assetName;
  final double? width;
  final BoxFit? fit;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : ColorFilter.mode(context.color.iconPrimary, BlendMode.srcIn),
    );
  }
}
