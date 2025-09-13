import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/dto/user/user_dto.dart';
import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/core/domain/models/post_model.dart';

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
    int? likesCount,
    @DateTimeConverter() DateTime? createdAt,
    @DateTimeConverter() DateTime? updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
  }) = _PostDto;

  factory PostDto.fromJson(Map<String, dynamic> json) => _$PostDtoFromJson(json);
}

extension PostMapper on PostDto {
  PostModel toModel() => PostModel(
    id: id,
    description: description,
    authorId: authorId,
    author: author?.toModel(),
    title: title,
    mediaUrl: mediaUrl,
    createdAt: createdAt,
    updatedAt: updatedAt,
    deletedAt: deletedAt,
    isLiked: isLiked,
    likesCount: likesCount,
  );
}
