import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_request_dto.freezed.dart';
part 'create_post_request_dto.g.dart';

@freezed
sealed class CreatePostRequestDto with _$CreatePostRequestDto {
  const factory CreatePostRequestDto({
    required String title,
    required String mediaUrl,
    required String description,
  }) = _CreatePostRequestDto;

  factory CreatePostRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePostRequestDtoFromJson(json);
}
