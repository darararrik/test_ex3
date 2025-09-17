import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/features/auth/domain/enums/gender.dart';

class GenderConverter implements JsonConverter<Gender?, String?> {
  const GenderConverter();
  static const _jsonToGenderMap = {'MALE': Gender.male, 'FEMALE': Gender.female};
  static const _genderToJsonMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};
  @override
  Gender? fromJson(String? json) {
    if (json == null || json.trim().isEmpty) {
      return null;
    }
    return _jsonToGenderMap[json];
  }

  @override
  String? toJson(Gender? genderModel) {
    if (genderModel == null) return null;
    final gender = Gender.values.firstWhereOrNull((g) => g == genderModel);
    return _genderToJsonMap[gender]!;
  }
}
