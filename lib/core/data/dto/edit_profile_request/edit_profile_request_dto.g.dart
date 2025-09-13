// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditProfileRequestDto _$EditProfileRequestDtoFromJson(
  Map<String, dynamic> json,
) => _EditProfileRequestDto(
  email: json['email'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  birthDate: _$JsonConverterFromJson<String, DateTime>(
    json['birthDate'],
    const DateTimeConverter().fromJson,
  ),
  country: json['country'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  middleName: json['middleName'] as String?,
  phone: json['phone'] as String?,
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
);

Map<String, dynamic> _$EditProfileRequestDtoToJson(
  _EditProfileRequestDto instance,
) => <String, dynamic>{
  'email': instance.email,
  'avatarUrl': instance.avatarUrl,
  'birthDate': _$JsonConverterToJson<String, DateTime>(
    instance.birthDate,
    const DateTimeConverter().toJson,
  ),
  'country': instance.country,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'middleName': instance.middleName,
  'phone': instance.phone,
  'gender': _$GenderEnumMap[instance.gender],
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
