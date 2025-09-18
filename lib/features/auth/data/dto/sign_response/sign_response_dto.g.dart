// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignResponseDto _$SignResponseDtoFromJson(Map<String, dynamic> json) =>
    _SignResponseDto(
      token: json['token'] as String?,
      problem: json['problem'] == null
          ? null
          : ProblemDto.fromJson(json['problem'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignResponseDtoToJson(_SignResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'problem': instance.problem,
      'user': instance.user,
    };
