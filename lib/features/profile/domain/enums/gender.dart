import 'package:flutter/material.dart';

import 'package:test_3/core/presentation/utils/utils.dart';

enum Gender { male, female }

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
