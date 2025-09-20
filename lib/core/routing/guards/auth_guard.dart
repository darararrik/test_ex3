import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/data/data_source/local/local_data_source.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/features/auth/presentation/bloc/auth/auth_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.localDataSource});
  final LocalDataSource localDataSource;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await localDataSource.getToken();
    final isAuthorized =
        router.navigatorKey.currentContext?.read<AuthBloc>().state.isAuthorized ?? false;
    if (token != null && token.isNotEmpty && isAuthorized) {
      resolver.next(true);
    } else {
      router.replace(const LoginRoute());
    }
  }
}
