import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/presentation/utils/utils.dart';

enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
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
