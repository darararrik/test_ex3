// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  email: json['email'] as String,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  middleName: json['middleName'] as String?,
  avatarUrl: json['avatarUrl'] as String? ?? "",
  phone: json['phone'] as String?,
  birthDate: _$JsonConverterFromJson<String, DateTime>(
    json['birthDate'],
    const DateTimeConverter().fromJson,
  ),
  country: json['country'] as String?,
  gender: const GenderConverter().fromJson(json['gender'] as String?),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'birthDate': _$JsonConverterToJson<String, DateTime>(
        instance.birthDate,
        const DateTimeConverter().toJson,
      ),
      'country': instance.country,
      'gender': const GenderConverter().toJson(instance.gender),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
