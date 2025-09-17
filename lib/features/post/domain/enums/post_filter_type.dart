import 'package:freezed_annotation/freezed_annotation.dart';

enum PostFilterType {
  @JsonValue('NEW')
  newPosts,

  @JsonValue('TOP')
  top,
}
