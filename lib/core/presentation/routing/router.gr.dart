// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:test_3/core/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_3/features/create_post/presentation/create_post_screen.dart'
    as _i2;
import 'package:test_3/features/login/presentation/login_screen.dart' as _i3;
import 'package:test_3/features/main/presentation/main_screen.dart' as _i4;
import 'package:test_3/features/nav/presentation/nav.dart' as _i5;
import 'package:test_3/features/post/presentation/post_screen.dart' as _i6;
import 'package:test_3/features/posts/presentation/posts_screen.dart' as _i7;
import 'package:test_3/features/registration/presentation/registration_screen.dart'
    as _i8;

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapperRoute extends _i9.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i9.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.WrappedRoute(child: const _i1.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i2.CreatePostScreen]
class CreatePostRoute extends _i9.PageRouteInfo<void> {
  const CreatePostRoute({List<_i9.PageRouteInfo>? children})
    : super(CreatePostRoute.name, initialChildren: children);

  static const String name = 'CreatePostRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreatePostScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainScreen();
    },
  );
}

/// generated route for
/// [_i5.NavBar]
class NavBarRoute extends _i9.PageRouteInfo<void> {
  const NavBarRoute({List<_i9.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavBar();
    },
  );
}

/// generated route for
/// [_i6.PostScreen]
class PostRoute extends _i9.PageRouteInfo<void> {
  const PostRoute({List<_i9.PageRouteInfo>? children})
    : super(PostRoute.name, initialChildren: children);

  static const String name = 'PostRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.PostScreen();
    },
  );
}

/// generated route for
/// [_i7.PostsScreen]
class PostsRoute extends _i9.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({
    _i10.Key? key,
    required bool isFavorites,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PostsRoute.name,
         args: PostsRouteArgs(key: key, isFavorites: isFavorites),
         initialChildren: children,
       );

  static const String name = 'PostsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostsRouteArgs>();
      return _i7.PostsScreen(key: args.key, isFavorites: args.isFavorites);
    },
  );
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key, required this.isFavorites});

  final _i10.Key? key;

  final bool isFavorites;

  @override
  String toString() {
    return 'PostsRouteArgs{key: $key, isFavorites: $isFavorites}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PostsRouteArgs) return false;
    return key == other.key && isFavorites == other.isFavorites;
  }

  @override
  int get hashCode => key.hashCode ^ isFavorites.hashCode;
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i9.PageRouteInfo<void> {
  const RegistrationRoute({List<_i9.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.RegistrationScreen();
    },
  );
}
