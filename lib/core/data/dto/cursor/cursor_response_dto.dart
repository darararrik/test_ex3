import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_response_dto.freezed.dart';
part 'cursor_response_dto.g.dart';

@freezed
sealed class CursorResponseDto with _$CursorResponseDto {
  const factory CursorResponseDto({String? afterCursor}) = _CursorResponseDto;
  factory CursorResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CursorResponseDtoFromJson(json);
}
