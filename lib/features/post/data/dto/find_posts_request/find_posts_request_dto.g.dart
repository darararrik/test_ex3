// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_posts_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FindPostsRequestDto _$FindPostsRequestDtoFromJson(Map<String, dynamic> json) =>
    _FindPostsRequestDto(
      afterCursor: json['afterCursor'] as String?,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      type: $enumDecode(_$PostFilterTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$FindPostsRequestDtoToJson(
  _FindPostsRequestDto instance,
) => <String, dynamic>{
  'afterCursor': instance.afterCursor,
  'limit': instance.limit,
  'type': _$PostFilterTypeEnumMap[instance.type]!,
};

const _$PostFilterTypeEnumMap = {
  PostFilterType.newPosts: 'NEW',
  PostFilterType.top: 'TOP',
};
