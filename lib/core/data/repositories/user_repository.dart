// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:test_3/core/domain/repositories/user_repository.dart';
import 'package:test_3/lib.dart';

class UserRepositoryImpl implements IUserRepository {
  final RemoteDataSource _remoteDataSource;
  UserRepositoryImpl({required RemoteDataSource remoteDataSource}) : _remoteDataSource = remoteDataSource;
  @override
  Future<UserModel?> getUser() async =>
      (await _remoteDataSource.getCurrentUser())?.toModel();

  @override
  Future<UserModel?> userEdit({required UserModel user}) async {
    final req = EditProfileRequestDto(
      email: user.email,
      avatarUrl: user.email,
      birthDate: user.birthDate,
      country: user.country,
      firstName: user.firstName,
      lastName: user.lastName,
      middleName: user.middleName,
      phone: user.phone,
      gender: user.gender,
    );
    final newUser = (await _remoteDataSource.editProfile(req))?.toModel();
    return newUser;
  }
}
