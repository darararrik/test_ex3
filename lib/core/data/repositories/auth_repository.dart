import 'package:test_3/core/data/data_source/remote/remote.dart';
import 'package:test_3/core/domain/models/sign_in_request.dart';
import 'package:test_3/core/domain/models/sign_up_request.dart';
import 'package:test_3/core/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RemoteDataSource _remoteDataSource;
  @override
  Future<void> signIn({required SignInRequest signIn}) =>
      _remoteDataSource.signIn(signIn: signIn);

  @override
  Future<void> signUp({required SignUpRequest signUp}) =>
      _remoteDataSource.signUp(signUp: signUp);
}
