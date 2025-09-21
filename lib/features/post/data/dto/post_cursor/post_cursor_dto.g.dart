// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_cursor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostCursorDto _$PostCursorDtoFromJson(Map<String, dynamic> json) =>
    _PostCursorDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: json['pageInfo'] == null
          ? null
          : CursorResponseDto.fromJson(
              json['pageInfo'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PostCursorDtoToJson(_PostCursorDto instance) =>
    <String, dynamic>{'data': instance.data, 'pageInfo': instance.pageInfo};
