import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/utils/utils.dart';

class SignButton extends StatelessWidget {
  const SignButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isEnabled = false,
  });
  final VoidCallback onPressed;
  final String text;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isEnabled ? onPressed : null,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(const P(horizontal: S.s4)),
        textStyle: WidgetStateProperty.all(context.text.body2),
        foregroundColor: WidgetStateProperty.all(context.color.textAccent),
      ),
      child: Text(text),
    );
  }
}
