import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/core/data/utils/gender_converter.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/auth/domain/models/user_model.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDto with _$UserDto {
  const factory UserDto({
    String? id,
    required String email,
    required String firstName,
    required String lastName,
    required String avatarUrl,
    String? phone,
    @DateTimeConverter() DateTime? birthDate,
    String? country,
    @GenderConverter() Gender? gender,
    @DateTimeConverter() DateTime? createdAt,
    @DateTimeConverter() DateTime? updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    String? middleName,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

extension UserMapper on UserDto {
  UserModel toModel() => UserModel(
    id: id,
    email: email,
    firstName: firstName,
    lastName: lastName,
    avatarUrl: avatarUrl,
    phone: phone,
    birthDate: birthDate,
    country: country,
    gender: gender,
  );
}
