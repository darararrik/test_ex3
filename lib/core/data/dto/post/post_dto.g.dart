// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostDto _$PostDtoFromJson(Map<String, dynamic> json) => _PostDto(
  id: json['id'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  mediaUrl: json['mediaUrl'] as String?,
  authorId: json['authorId'] as String?,
  author: json['author'] == null
      ? null
      : UserDto.fromJson(json['author'] as Map<String, dynamic>),
  isLiked: json['isLiked'] as bool?,
  likesCount: (json['likesCount'] as num?)?.toDouble(),
  createdAt: _$JsonConverterFromJson<String, DateTime>(
    json['createdAt'],
    const DateTimeConverter().fromJson,
  ),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const DateTimeConverter().fromJson,
  ),
  deletedAt: json['deletedAt'] as String?,
);

Map<String, dynamic> _$PostDtoToJson(_PostDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'mediaUrl': instance.mediaUrl,
  'authorId': instance.authorId,
  'author': instance.author,
  'isLiked': instance.isLiked,
  'likesCount': instance.likesCount,
  'createdAt': _$JsonConverterToJson<String, DateTime>(
    instance.createdAt,
    const DateTimeConverter().toJson,
  ),
  'updatedAt': _$JsonConverterToJson<String, DateTime>(
    instance.updatedAt,
    const DateTimeConverter().toJson,
  ),
  'deletedAt': instance.deletedAt,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
