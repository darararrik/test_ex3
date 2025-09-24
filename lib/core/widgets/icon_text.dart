import 'package:flutter/material.dart';

import 'package:test_3/core/constants/s.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/widgets/app_icon.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.iconPath,
    required this.text,
    required this.onTap,
  });
  final String iconPath;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          AppIcon(iconPath, width: S.s24),
          Text(text, style: context.text.body4),
        ].separated(const SizedBox(width: S.s8)),
      ),
    );
  }
}
