// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:test_3/core/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_3/core/presentation/routing/wrappers/my_post_wrapper.dart'
    as _i6;
import 'package:test_3/features/create_post/presentation/create_post_screen.dart'
    as _i2;
import 'package:test_3/features/favorites/presentation/favorites_screen.dart'
    as _i3;
import 'package:test_3/features/login/presentation/login_screen.dart' as _i4;
import 'package:test_3/features/main/presentation/main_screen.dart' as _i5;
import 'package:test_3/features/my_posts/presentation/my_posts_screen.dart'
    as _i7;
import 'package:test_3/features/nav/presentation/nav.dart' as _i8;
import 'package:test_3/features/registration/presentation/registration_screen.dart'
    as _i9;

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapperRoute extends _i10.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i10.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.WrappedRoute(child: const _i1.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i2.CreatePostScreen]
class CreatePostRoute extends _i10.PageRouteInfo<void> {
  const CreatePostRoute({List<_i10.PageRouteInfo>? children})
    : super(CreatePostRoute.name, initialChildren: children);

  static const String name = 'CreatePostRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreatePostScreen();
    },
  );
}

/// generated route for
/// [_i3.FavoritesScreen]
class FavoritesRoute extends _i10.PageRouteInfo<void> {
  const FavoritesRoute({List<_i10.PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.FavoritesScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.MainScreen();
    },
  );
}

/// generated route for
/// [_i6.MyPostWrapper]
class MyPostWrapperRoute extends _i10.PageRouteInfo<void> {
  const MyPostWrapperRoute({List<_i10.PageRouteInfo>? children})
    : super(MyPostWrapperRoute.name, initialChildren: children);

  static const String name = 'MyPostWrapperRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.WrappedRoute(child: const _i6.MyPostWrapper());
    },
  );
}

/// generated route for
/// [_i7.MyPostsScreen]
class MyPostsRoute extends _i10.PageRouteInfo<void> {
  const MyPostsRoute({List<_i10.PageRouteInfo>? children})
    : super(MyPostsRoute.name, initialChildren: children);

  static const String name = 'MyPostsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.MyPostsScreen();
    },
  );
}

/// generated route for
/// [_i8.NavBar]
class NavBarRoute extends _i10.PageRouteInfo<void> {
  const NavBarRoute({List<_i10.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.NavBar();
    },
  );
}

/// generated route for
/// [_i9.RegistrationScreen]
class RegistrationRoute extends _i10.PageRouteInfo<void> {
  const RegistrationRoute({List<_i10.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.RegistrationScreen();
    },
  );
}
