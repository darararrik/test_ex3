import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/data/data_source/local/local.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.localDataSource});
  final LocalDataSource localDataSource;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await localDataSource.getToken();
    if (token != null && token.isNotEmpty) {
      resolver.next(true);
    } else {
      router.replace(const LoginRoute());
    }
  }
}
