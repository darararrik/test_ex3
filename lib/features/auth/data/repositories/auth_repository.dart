import 'package:test_3/core/data/data_source/local/local_data_source.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/core/data/dto/dto.dart';
import 'package:test_3/features/auth/domain/models/user_model.dart';
import 'package:test_3/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteDataSource remoteDataSource,
    required LocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;
  @override
  Future<UserModel?> signIn({required String email, required String password}) async {
    final SignInRequestDto signIn = SignInRequestDto(email: email, password: password);
    final res = await _remoteDataSource.signIn(signIn: signIn);
    if (res.token != null && res.token!.isNotEmpty) {
      await _localDataSource.saveToken(res.token!);
      return res.user!.toModel();
    } else {
      return null;
    }
  }

  @override
  Future<UserModel?> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    final SignUpRequestDto signUp = SignUpRequestDto(
      email: email,
      password: password,
      passwordConfirm: passwordConfirm,
    );

    final res = await _remoteDataSource.signUp(signUp: signUp);
    if (res.token != null && res.token!.isNotEmpty) {
      await _localDataSource.saveToken(res.token!);
      return res.user!.toModel();
    } else {
      return null;
    }
  }

  @override
  Future<UserModel?> checkAuth() async {
    final token = await _localDataSource.getToken();
    if (token != null) {
      return (await _remoteDataSource.getCurrentUser())!.toModel();
    } else {
      return null;
    }
  }
}
