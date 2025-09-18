// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  middleName: json['middleName'] as String,
  avatarUrl: json['avatarUrl'] as String,
  phone: json['phone'] as String,
  birthDate: const DateTimeConverter().fromJson(json['birthDate'] as String),
  country: json['country'] as String,
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'email': instance.email,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'middleName': instance.middleName,
  'avatarUrl': instance.avatarUrl,
  'phone': instance.phone,
  'birthDate': const DateTimeConverter().toJson(instance.birthDate),
  'country': instance.country,
  'gender': _$GenderEnumMap[instance.gender]!,
};

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};
