import 'package:flutter/material.dart';

import 'package:test_3/core/presentation/constants/sz.dart';
import 'package:test_3/core/presentation/widgets/app_icon.dart';

class IB extends StatelessWidget {
  const IB({
    super.key,
    required this.onPressed,
    required this.iconPath,
    this.iconColor,
    this.width,
    this.height,
  });
  final VoidCallback onPressed;
  final String iconPath;
  final Color? iconColor;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AppIcon(
        iconPath,
        width: width ?? Sz.s24,
        height: height ?? Sz.s24,
        color: iconColor,
      ),
      onPressed: onPressed,
    );
  }
}
