import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/features/auth/data/utils/gender_converter.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/auth/domain/models/user_model.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDto with _$UserDto {
  const factory UserDto({
    required String email,
    required String firstName,
    required String lastName,
    required String middleName,
    required String avatarUrl,
    required String phone,
    @DateTimeConverter() required DateTime birthDate,
    required String country,
    @GenderConverter() required Gender gender,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

extension UserMapper on UserDto {
  UserModel toModel() => UserModel(
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatarUrl: avatarUrl,
    phone: phone,
    birthDate: birthDate,
    country: country,
    gender: gender,
    middleName: middleName,
  );
}
