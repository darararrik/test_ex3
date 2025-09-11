import 'package:test_3/core/domain/models/sign_in_request.dart';
import 'package:test_3/core/domain/models/sign_up_request.dart';

abstract interface class IAuthRepository {
  Future<bool> signIn({required SignInRequest signIn});
  Future<bool> signUp({required SignUpRequest signUp});
}
