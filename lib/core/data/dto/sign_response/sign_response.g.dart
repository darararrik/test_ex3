// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignResponse _$SignResponseFromJson(Map<String, dynamic> json) =>
    _SignResponse(
      token: json['token'] as String?,
      problem: json['problem'] == null
          ? null
          : ProblemDto.fromJson(json['problem'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignResponseToJson(_SignResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'problem': instance.problem,
      'user': instance.user,
    };
