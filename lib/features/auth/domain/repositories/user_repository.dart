import 'package:test_3/features/auth/domain/models/user_model.dart';

abstract interface class IUserRepository {
  Future<UserModel?> getUser();
  Future<UserModel?> userEdit({required UserModel user});
}
