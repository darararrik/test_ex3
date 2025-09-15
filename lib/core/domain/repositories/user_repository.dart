import 'package:test_3/lib.dart';

abstract interface class IUserRepository {
  Future<UserModel?> getUser();
  Future<UserModel?> userEdit({required UserModel user});
}
