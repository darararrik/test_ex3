// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:test_3/core/domain/models/post_model.dart' as _i14;
import 'package:test_3/core/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_3/core/presentation/routing/wrappers/posts_wrapper.dart'
    as _i8;
import 'package:test_3/core/state/posts/posts_bloc.dart' as _i15;
import 'package:test_3/features/create_post/presentation/create_post_screen.dart'
    as _i2;
import 'package:test_3/features/login/presentation/login_screen.dart' as _i3;
import 'package:test_3/features/main/presentation/main_screen.dart' as _i4;
import 'package:test_3/features/nav/presentation/nav.dart' as _i5;
import 'package:test_3/features/post/presentation/post_screen.dart' as _i6;
import 'package:test_3/features/posts/presentation/posts_screen.dart' as _i7;
import 'package:test_3/features/profile/presentation/profile_screen.dart'
    as _i9;
import 'package:test_3/features/registration/presentation/registration_screen.dart'
    as _i10;
import 'package:test_3/lib.dart' as _i13;

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapperRoute extends _i11.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i11.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return _i11.WrappedRoute(child: const _i1.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i2.CreatePostScreen]
class CreatePostRoute extends _i11.PageRouteInfo<CreatePostRouteArgs> {
  CreatePostRoute({
    _i12.Key? key,
    required _i13.PostsBloc bloc,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         CreatePostRoute.name,
         args: CreatePostRouteArgs(key: key, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'CreatePostRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreatePostRouteArgs>();
      return _i2.CreatePostScreen(key: args.key, bloc: args.bloc);
    },
  );
}

class CreatePostRouteArgs {
  const CreatePostRouteArgs({this.key, required this.bloc});

  final _i12.Key? key;

  final _i13.PostsBloc bloc;

  @override
  String toString() {
    return 'CreatePostRouteArgs{key: $key, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreatePostRouteArgs) return false;
    return key == other.key && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i11.PageRouteInfo<void> {
  const MainRoute({List<_i11.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainScreen();
    },
  );
}

/// generated route for
/// [_i5.NavBar]
class NavBarRoute extends _i11.PageRouteInfo<void> {
  const NavBarRoute({List<_i11.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavBar();
    },
  );
}

/// generated route for
/// [_i6.PostScreen]
class PostRoute extends _i11.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i12.Key? key,
    required _i14.PostModel post,
    required _i15.PostsBloc bloc,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(key: key, post: post, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i6.PostScreen(key: args.key, post: args.post, bloc: args.bloc);
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.post, required this.bloc});

  final _i12.Key? key;

  final _i14.PostModel post;

  final _i15.PostsBloc bloc;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, post: $post, bloc: $bloc}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PostRouteArgs) return false;
    return key == other.key && post == other.post && bloc == other.bloc;
  }

  @override
  int get hashCode => key.hashCode ^ post.hashCode ^ bloc.hashCode;
}

/// generated route for
/// [_i7.PostsScreen]
class PostsRoute extends _i11.PageRouteInfo<void> {
  const PostsRoute({List<_i11.PageRouteInfo>? children})
    : super(PostsRoute.name, initialChildren: children);

  static const String name = 'PostsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.PostsScreen();
    },
  );
}

/// generated route for
/// [_i8.PostsWrapper]
class PostsWrapper extends _i11.PageRouteInfo<PostsWrapperArgs> {
  PostsWrapper({
    _i12.Key? key,
    required _i13.PostsCategory category,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         PostsWrapper.name,
         args: PostsWrapperArgs(key: key, category: category),
         initialChildren: children,
       );

  static const String name = 'PostsWrapper';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostsWrapperArgs>();
      return _i11.WrappedRoute(
        child: _i8.PostsWrapper(key: args.key, category: args.category),
      );
    },
  );
}

class PostsWrapperArgs {
  const PostsWrapperArgs({this.key, required this.category});

  final _i12.Key? key;

  final _i13.PostsCategory category;

  @override
  String toString() {
    return 'PostsWrapperArgs{key: $key, category: $category}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PostsWrapperArgs) return false;
    return key == other.key && category == other.category;
  }

  @override
  int get hashCode => key.hashCode ^ category.hashCode;
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i10.RegistrationScreen]
class RegistrationRoute extends _i11.PageRouteInfo<void> {
  const RegistrationRoute({List<_i11.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.RegistrationScreen();
    },
  );
}
