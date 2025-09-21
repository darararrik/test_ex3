import 'package:image_picker/image_picker.dart';

import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/auth/domain/models/user_model.dart';
import 'package:test_3/features/auth/domain/repositories/user_repository.dart';
import 'package:test_3/features/profile/data/dto/user/user_dto.dart';

class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl({required RemoteFull remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final RemoteFull _remoteDataSource;
  @override
  Future<UserModel> getUser() async =>
      (await _remoteDataSource.getCurrentUser()).toModel();

  @override
  Future<UserModel> userEdit({
    required String email,
    required XFile? imageAvatar,
    required DateTime? birthDate,
    required String? country,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    required String? phone,
    required Gender? gender,
  }) async {
    final newUser = (await _remoteDataSource.editProfile(
      email: email,
      imageAvatar: imageAvatar,
      birthDate: birthDate,
      country: country,
      firstName: firstName,
      lastName: lastName,
      middleName: middleName,
      phone: phone,
      gender: gender,
    )).toModel();
    return newUser;
  }
}
