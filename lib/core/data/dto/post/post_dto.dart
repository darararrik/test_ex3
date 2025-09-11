import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/dto/user/user_dto.dart';
import 'package:test_3/core/data/utils/date_time_converter.dart';

part 'post_dto.freezed.dart';
part 'post_dto.g.dart';

@freezed
sealed class PostDto with _$PostDto {
  const factory PostDto({
    String? id,
    String? title,
    String? description,
    String? mediaUrl,
    String? authorId,
    UserDto? author,
    bool? isLiked,
    double? likesCount,
    @DateTimeConverter() DateTime? createdAt,
    @DateTimeConverter() DateTime? updatedAt,
    String? deletedAt,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) => _$PostDtoFromJson(json);
}
