import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/state/cubit/drawer_cubit.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: NavBarRoute.page,
      initial: true,
      customRouteBuilder: <T>(context, child, page) {
        return CupertinoPageRoute<T>(
          fullscreenDialog: page.fullscreenDialog,
          settings: page,
          builder: (_) {
            return BlocProvider(create: (context) => DrawerCubit(), child: child);
          },
        );
      },
      children: [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: PostsRoute.page),
      ],
    ),
    AutoRoute(page: PostRoute.page),
    AutoRoute(page: CreatePostRoute.page),
    AutoRoute(page: ProfileRoute.page),

    AutoRoute(
      page: AuthWrapperRoute.page,
      children: [
        AutoRoute(page: LoginRoute.page, path: 'login', initial: true),
        AutoRoute(page: RegistrationRoute.page, path: 'registration'),
      ],
    ),
  ];
}
