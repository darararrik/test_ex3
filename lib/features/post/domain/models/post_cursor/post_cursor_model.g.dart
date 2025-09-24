// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_cursor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostAfterCursor _$PostAfterCursorFromJson(Map<String, dynamic> json) =>
    _PostAfterCursor(
      posts: (json['data'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : CursorModel.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostAfterCursorToJson(_PostAfterCursor instance) =>
    <String, dynamic>{'data': instance.posts, 'pageInfo': instance.pageInfo};
