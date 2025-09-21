import 'package:flutter/material.dart';

import 'package:test_3/core/extensions/extensions.dart';

enum Gender {
  female(0),
  male(1);

  const Gender(this.value);
  final int value;
}

extension GenderExt on Gender {
  String label(BuildContext context) {
    switch (this) {
      case Gender.male:
        return context.l10n.male;
      case Gender.female:
        return context.l10n.female;
    }
  }
}
