import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/core/data/data_source/local/local_data_source.dart';
import 'package:test_3/core/routing/guards/auth_guard.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/features/nav/presentation/cubit/drawer_cubit.dart';
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart';

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
    CustomRoute(
      initial: true,
      page: NavBarRoute.page,
      guards: [authGuard],
      customRouteBuilder: <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
        return CupertinoPageRoute<T>(
          settings: page,
          builder: (BuildContext context) {
            return BlocProvider(create: (context) => DrawerCubit(), child: child);
          },
        );
      },
      children: [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: PostsWrapperRoute.page,
              children: [
                CustomRoute(
                  page: NewPostsTab.page,
                  initial: true,
                  customRouteBuilder:
                      <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
                        return CupertinoPageRoute<T>(
                          settings: page,
                          builder: (BuildContext context) {
                            context.read<PostsBloc>().add(const PostsEvent.getPosts());
                            return child;
                          },
                        );
                      },
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: PostsWrapperRoute.page,
          children: [
            CustomRoute(
              page: PostsRoute.page,
              initial: true,
              customRouteBuilder:
                  <T>(BuildContext context, Widget child, AutoRoutePage<T> page) {
                    return CupertinoPageRoute<T>(
                      settings: page,
                      builder: (BuildContext context) {
                        context.read<PostsBloc>().add(const PostsEvent.getPosts());
                        return child;
                      },
                    );
                  },
            ),
          ],
        ),
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
