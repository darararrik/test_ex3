import 'package:test_3/core/domain/models/sign_in_request.dart';
import 'package:test_3/core/domain/models/sign_up_request.dart';

abstract interface class IAuthRepository {
  Future<void> signIn({required SignInRequest signIn});
  Future<void> signUp({required SignUpRequest signUp});
}
