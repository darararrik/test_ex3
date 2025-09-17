import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';

part 'edit_profile_request_dto.freezed.dart';
part 'edit_profile_request_dto.g.dart';

@freezed
sealed class EditProfileRequestDto with _$EditProfileRequestDto {
  const factory EditProfileRequestDto({
    required String? email,
    required String? avatarUrl,
    @DateTimeConverter() required DateTime? birthDate,
    required String? country,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    required String? phone,
    required Gender? gender,
  }) = _EditProfileRequestDto;

  factory EditProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestDtoFromJson(json);
}
