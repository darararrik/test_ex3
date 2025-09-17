import 'package:test_3/core/data/data_source/local/secure.dart';

class LocalDataSource with SecureStorageMixin {
  LocalDataSource._();

  static Future<LocalDataSource> init() async {
    final local = LocalDataSource._();
    await local.initSecureStorage();
    return local;
  }
}
