import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/features/auth/data/utils/gender_converter.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required String email,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    @Default("") String avatarUrl,
    required String? phone,
    @DateTimeConverter() required DateTime? birthDate,
    required String? country,
    @GenderConverter() required Gender? gender,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
