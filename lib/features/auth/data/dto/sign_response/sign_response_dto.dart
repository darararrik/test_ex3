import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/dto/problem/problem_dto.dart';
import 'package:test_3/features/profile/data/dto/user/user_dto.dart';

part 'sign_response_dto.freezed.dart';
part 'sign_response_dto.g.dart';

@freezed
sealed class SignResponseDto with _$SignResponseDto {
  factory SignResponseDto({
    ProblemDto? problem,
    required String token,
    required UserDto user,
  }) = _SignResponseDto;
  factory SignResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignResponseDtoFromJson(json);
}
