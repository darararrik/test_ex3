// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: json['id'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  phone: json['phone'] as String?,
  birthDate: json['birthDate'] as String?,
  country: json['country'] as String?,
  gender: const GenderConverter().fromJson(json['gender'] as String?),
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const DateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const DateTimeConverter().fromJson,
  ),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const DateTimeConverter().fromJson,
  ),
  middleName: json['middleName'] as String?,
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'avatarUrl': instance.avatarUrl,
  'phone': instance.phone,
  'birthDate': instance.birthDate,
  'country': instance.country,
  'gender': const GenderConverter().toJson(instance.gender),
  'createdAt': _$JsonConverterToJson<String, DateTime>(
    instance.createdAt,
    const DateTimeConverter().toJson,
  ),
  'updatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.updatedAt,
    const DateTimeConverter().toJson,
  ),
  'deletedAt': _$JsonConverterToJson<String, DateTime>(
    instance.deletedAt,
    const DateTimeConverter().toJson,
  ),
  'middleName': instance.middleName,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
