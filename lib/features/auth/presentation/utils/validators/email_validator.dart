import 'package:flutter/material.dart';
import 'package:test_3/core/extensions/extensions.dart';

String? validatorEmail(String? value, BuildContext context) {
  final email = value?.trim() ?? '';

  if (email.isEmpty) {
    return context.l10n.enterEmail;
  }

  final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  if (!emailRegex.hasMatch(email)) {
    return context.l10n.enterCorrectEmail;
  }

  return null;
}
