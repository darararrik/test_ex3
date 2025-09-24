import 'package:image_picker/image_picker.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/auth/domain/repositories/user_repository.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';

class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final RemoteDataSource _remoteDataSource;
  @override
  Future<UserModel> getUser() => _remoteDataSource.getCurrentUser();

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
  }) => _remoteDataSource.editProfile(
    email: email,
    imageAvatar: imageAvatar,
    birthDate: birthDate,
    country: country,
    firstName: firstName,
    lastName: lastName,
    middleName: middleName,
    phone: phone,
    gender: gender,
  );
}
