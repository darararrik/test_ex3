// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  mediaUrl: json['mediaUrl'] as String,
  authorId: json['authorId'] as String?,
  author: UserModel.fromJson(json['author'] as Map<String, dynamic>),
  isLiked: json['isLiked'] as bool,
  likesCount: (json['likesCount'] as num).toInt(),
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: _$JsonConverterFromJson<String, DateTime>(
    json['updatedAt'],
    const DateTimeConverter().fromJson,
  ),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const DateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'mediaUrl': instance.mediaUrl,
      'authorId': instance.authorId,
      'author': instance.author,
      'isLiked': instance.isLiked,
      'likesCount': instance.likesCount,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': _$JsonConverterToJson<String, DateTime>(
        instance.updatedAt,
        const DateTimeConverter().toJson,
      ),
      'deletedAt': _$JsonConverterToJson<String, DateTime>(
        instance.deletedAt,
        const DateTimeConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
