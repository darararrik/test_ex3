import 'package:flutter/material.dart';

import 'package:test_3/core/extensions/extensions.dart';

class UnderButtonText extends StatelessWidget {
  const UnderButtonText({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });
  final String text;
  final String buttonText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: context.text.body5.copyWith(color: context.color.textPrimary)),
        TextButton(onPressed: onPressed, child: Text(buttonText)),
      ],
    );
  }
}
