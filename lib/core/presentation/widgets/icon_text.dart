// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/constants/sz.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/app_icon.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, required this.iconPath, required this.text});
  final String iconPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIcon(iconPath, width: Sz.s24),
        Text(text, style: context.text.body4),
      ].separated(const SizedBox(width: S.s8)),
    );
  }
}
