import 'package:test_3/core/data/data_source/local/local_data_source.dart';
import 'package:test_3/features/auth/domain/repositories/token_repository.dart';

class TokenRepositoryImpl implements ITokenRepository {
  TokenRepositoryImpl({required LocalDataSource localDataSource})
    : _localDataSource = localDataSource;
  final LocalDataSource _localDataSource;

  @override
  Future<void> saveToken(String token) => _localDataSource.saveToken(token);

  @override
  Future<String?> getToken() => _localDataSource.getToken();

  @override
  Future<void> removeToken() => _localDataSource.removeToken();
}
