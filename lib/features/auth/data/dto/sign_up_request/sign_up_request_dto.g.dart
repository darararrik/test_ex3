// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignUpRequestDto _$SignUpRequestDtoFromJson(Map<String, dynamic> json) =>
    _SignUpRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
    );

Map<String, dynamic> _$SignUpRequestDtoToJson(_SignUpRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
    };
