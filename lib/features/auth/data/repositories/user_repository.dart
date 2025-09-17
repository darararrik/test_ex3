import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/auth/domain/models/user_model.dart';
import 'package:test_3/features/auth/domain/repositories/user_repository.dart';
import 'package:test_3/features/profile/data/dto/edit_profile_request/edit_profile_request_dto.dart';
import 'package:test_3/features/profile/data/dto/user/user_dto.dart';

class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final RemoteDataSource _remoteDataSource;
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
