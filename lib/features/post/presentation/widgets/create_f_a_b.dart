import 'package:flutter/material.dart';

import 'package:test_3/core/constants/constants.dart';
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
        width: S.s24,
        height: S.s24,
        color: context.color.iconContrast,
      ),
    );
  }
}
