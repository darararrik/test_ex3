import 'package:test_3/core/data/data_source/local/secure.dart';

class LocalDataSource with SecureStorageMixin {
  Future<void> init() async {
    await initSecureStorage();
  }
}
