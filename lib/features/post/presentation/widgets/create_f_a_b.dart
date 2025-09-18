import 'package:flutter/material.dart';

import 'package:test_3/core/constants/app_icons.dart';
import 'package:test_3/core/constants/sz.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/widgets/app_icon.dart';

class CreateFAB extends StatelessWidget {
  const CreateFAB({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: AppIcon(
        AppIcons.plus,
        width: Sz.s24,
        height: Sz.s24,
        color: context.color.iconContrast,
      ),
    );
  }
}
