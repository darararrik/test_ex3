import 'package:test_3/core/data/data_source/local/local_data_source.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/auth/domain/domain.dart';
import 'package:test_3/features/profile/data/dto/user/user_dto.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteFull remoteDataSource,
    required LocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  final RemoteFull _remoteDataSource;
  final LocalDataSource _localDataSource;
  @override
  Future<UserModel> signIn({required String email, required String password}) async =>
      (await _remoteDataSource.signIn(email: email, password: password)).toModel();

  @override
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async => (await _remoteDataSource.signUp(
    email: email,
    password: password,
    passwordConfirm: passwordConfirm,
  )).toModel();

  @override
  Future<UserModel?> checkAuth() async {
    final token = await _localDataSource.getToken();
    if (token != null) {
      return (await _remoteDataSource.getCurrentUser()).toModel();
    } else {
      return null;
    }
  }
}
