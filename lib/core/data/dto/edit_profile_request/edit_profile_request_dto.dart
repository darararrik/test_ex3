import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/core/domain/enums/gender.dart';

part 'edit_profile_request_dto.freezed.dart';
part 'edit_profile_request_dto.g.dart';

@freezed
sealed class EditProfileRequestDto with _$EditProfileRequestDto {
  const factory EditProfileRequestDto({
    String? email,
    String? avatarUrl,
    @DateTimeConverter() DateTime? birthDate,
    String? country,
    String? firstName,
    String? lastName,
    String? middleName,
    String? phone,
    Gender? gender,
  }) = _EditProfileRequestDto;

  factory EditProfileRequestDto.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestDtoFromJson(json);
}
