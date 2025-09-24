import 'package:test_3/features/profile/domain/models/user/user_model.dart';

abstract interface class IAuthRepository {
  Future<UserModel?> checkAuth();
  Future<UserModel> signIn({required String email, required String password});
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  });
}
