// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignResponse _$SignResponseFromJson(Map<String, dynamic> json) =>
    _SignResponse(
      problem: json['problem'] == null
          ? null
          : ProblemModel.fromJson(json['problem'] as Map<String, dynamic>),
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignResponseToJson(_SignResponse instance) =>
    <String, dynamic>{
      'problem': instance.problem,
      'token': instance.token,
      'user': instance.user,
    };
