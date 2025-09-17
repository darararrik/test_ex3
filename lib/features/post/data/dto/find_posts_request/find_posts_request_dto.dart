import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/features/post/domain/enums/post_filter_type.dart';

part 'find_posts_request_dto.freezed.dart';
part 'find_posts_request_dto.g.dart';

@freezed
sealed class FindPostsRequestDto with _$FindPostsRequestDto {
  const factory FindPostsRequestDto({
    String? afterCursor,
    @Default(10) int limit,
    required PostFilterType type,
  }) = _FindPostsRequestDto;

  factory FindPostsRequestDto.fromJson(Map<String, dynamic> json) =>
      _$FindPostsRequestDtoFromJson(json);
}
