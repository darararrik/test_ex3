import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/data/data_source/local/local.dart';
import 'package:test_3/core/presentation/routing/guards/auth_guard.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/state/posts/posts_bloc.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter({required this.localDataSource})
    : authGuard = AuthGuard(localDataSource: localDataSource);

  final LocalDataSource localDataSource;
  final AuthGuard authGuard;
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      initial: true,
      page: NavBarRoute.page,
      // guards: [authGuard],
      // customRouteBuilder: <T>(context, child, page) {
      //   return CupertinoPageRoute<T>(
      //     fullscreenDialog: page.fullscreenDialog,
      //     settings: page,
      //     builder: (context) {
      //       return BlocProvider(create: (context) => DrawerCubit(), child: child);
      //     },
      //   );
      // },
      children: [
        AutoRoute(page: MainRoute.page, initial: true),
        FavRoutes.routes,
      ],
    ),

    AutoRoute(page: PostRoute.page, guards: [authGuard]),
    AutoRoute(page: CreatePostRoute.page, guards: [authGuard]),
    AutoRoute(page: ProfileRoute.page, guards: [authGuard]),
    AutoRoute(
      page: AuthWrapperRoute.page,
      children: [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: RegistrationRoute.page),
      ],
    ),
  ];
}

abstract class FavRoutes {
  static final routes = AutoRoute(
    page: PostsWrapper.page,
    children: [
      CustomRoute(
        page: PostsRoute.page,
        initial: true,
        customRouteBuilder:
            <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
              final wrapperArgs = page.routeData.parent!.argsAs<PostsWrapperArgs>();
              final category = wrapperArgs.category;
              return CupertinoPageRoute<T>(
                fullscreenDialog: page.fullscreenDialog,
                settings: page,
                builder: (BuildContext context) {
                  context.read<PostsBloc>().add(PostsEvent.getPosts(category: category));
                  return child;
                },
              );
            },
      ),
    ],
  );
}
