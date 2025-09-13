// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePostRequestDto _$CreatePostRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreatePostRequestDto(
  title: json['title'] as String,
  mediaUrl: json['mediaUrl'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$CreatePostRequestDtoToJson(
  _CreatePostRequestDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'mediaUrl': instance.mediaUrl,
  'description': instance.description,
};
