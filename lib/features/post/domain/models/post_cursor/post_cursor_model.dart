import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/models/cursor/cursor_model.dart';
import 'package:test_3/features/post/domain/models/post/post_model.dart';

part 'post_cursor_model.freezed.dart';
part 'post_cursor_model.g.dart';

@freezed
abstract class PostAfterCursor with _$PostAfterCursor {
  const factory PostAfterCursor({
    @JsonKey(name: "data") required List<PostModel> posts,
    required CursorModel? pageInfo,
  }) = _PostAfterCursor;

  factory PostAfterCursor.fromJson(Map<String, dynamic> json) =>
      _$PostAfterCursorFromJson(json);
}
