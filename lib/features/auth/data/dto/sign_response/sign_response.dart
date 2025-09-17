import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/core/data/dto/problem/problem_dto.dart';
import 'package:test_3/features/profile/data/dto/user/user_dto.dart';

part 'sign_response.freezed.dart';
part 'sign_response.g.dart';

@freezed
sealed class SignResponse with _$SignResponse {
  factory SignResponse({String? token, ProblemDto? problem, UserDto? user}) =
      _SignResponse;
  factory SignResponse.fromJson(Map<String, dynamic> json) =>
      _$SignResponseFromJson(json);
}
