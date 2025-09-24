import 'package:test_3/core/data/data_source/local/local_data_source.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/auth/domain/domain.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteDataSource remoteDataSource,
    required LocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;
  @override
  Future<UserModel> signIn({required String email, required String password}) =>
      _remoteDataSource.signIn(email: email, password: password);

  @override
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) => _remoteDataSource.signUp(
    email: email,
    password: password,
    passwordConfirm: passwordConfirm,
  );

  @override
  Future<UserModel?> checkAuth() async {
    final token = await _localDataSource.getToken();
    if (token != null) {
      return await _remoteDataSource.getCurrentUser();
    } else {
      return null;
    }
  }
}
