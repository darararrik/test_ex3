// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignResponseDto _$SignResponseDtoFromJson(Map<String, dynamic> json) =>
    _SignResponseDto(
      problem: json['problem'] == null
          ? null
          : ProblemDto.fromJson(json['problem'] as Map<String, dynamic>),
      token: json['token'] as String,
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignResponseDtoToJson(_SignResponseDto instance) =>
    <String, dynamic>{
      'problem': instance.problem,
      'token': instance.token,
      'user': instance.user,
    };
