import 'package:test_3/core/data/data_source/local/local.dart';
import 'package:test_3/core/data/data_source/remote/remote.dart';
import 'package:test_3/core/data/dto/sign_in_request.dart';
import 'package:test_3/core/data/dto/sign_up_request.dart';
import 'package:test_3/core/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteDataSource remoteDataSource,
    required LocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;
  @override
  Future<bool> signIn({required String email, required String password}) async {
    final SignInRequest signIn = SignInRequest(email: email, password: password);
    final token = await _remoteDataSource.signIn(signIn: signIn);
    if (token != null) {
      await _localDataSource.saveToken(token);
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    final SignUpRequest signUp = SignUpRequest(
      email: email,
      password: password,
      passwordConfirm: passwordConfirm,
    );

    final token = await _remoteDataSource.signUp(signUp: signUp);
    if (token != null) {
      await _localDataSource.saveToken(token);
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> checkAuth() async {
    final token = await _localDataSource.getToken();
    if (token != null) {
      return true;
    } else {
      return false;
    }
  }
}
