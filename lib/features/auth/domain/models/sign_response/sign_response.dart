import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/models/problem/problem_model.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';

part 'sign_response.freezed.dart';
part 'sign_response.g.dart';

@freezed
sealed class SignResponse with _$SignResponse {
  factory SignResponse({
    ProblemModel? problem,
    required String token,
    required UserModel user,
  }) = _SignResponse;
  factory SignResponse.fromJson(Map<String, dynamic> json) =>
      _$SignResponseFromJson(json);
}
