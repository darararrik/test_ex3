import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/data/dto/cursor/cursor_response_dto.dart';
import 'package:test_3/features/post/data/dto/post/post_dto.dart';
import 'package:test_3/features/post/domain/models/posts_cursor_model.dart';

part 'post_cursor_dto.freezed.dart';
part 'post_cursor_dto.g.dart';

@freezed
sealed class PostCursorDto with _$PostCursorDto {
  const factory PostCursorDto({
    required List<PostDto> data,
    required CursorResponseDto? pageInfo,
  }) = _PostCursorDto;

  factory PostCursorDto.fromJson(Map<String, dynamic> json) =>
      _$PostCursorDtoFromJson(json);
}

extension PostCursorMapper on PostCursorDto {
  PostsCursorModel toModel() => PostsCursorModel(
    cursor: pageInfo?.afterCursor,
    posts: data.map((p) => p.toModel()).toList(),
  );
}
