import 'package:auto_route/auto_route.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      page: AuthWrapperRoute.page,
      children: [
        AutoRoute(page: LoginRoute.page, path: 'login', initial: true),
        AutoRoute(page: RegistrationRoute.page, path: 'registration'),
      ],
    ),
  ];
}
