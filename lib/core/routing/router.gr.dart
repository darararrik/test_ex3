// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:test_3/features/auth/presentation/login_screen.dart' as _i3;
import 'package:test_3/features/auth/presentation/registration_screen.dart'
    as _i11;
import 'package:test_3/features/auth/presentation/wrapper/auth_wrapper.dart'
    as _i1;
import 'package:test_3/features/main/presentation/main_screen.dart' as _i4;
import 'package:test_3/features/main/presentation/widgets/new_posts.dart'
    as _i6;
import 'package:test_3/features/nav/presentation/nav.dart' as _i5;
import 'package:test_3/features/post/domain/enums/posts_category.dart' as _i16;
import 'package:test_3/features/post/domain/models/post/post_model.dart'
    as _i15;
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart' as _i14;
import 'package:test_3/features/post/presentation/create_post_screen.dart'
    as _i2;
import 'package:test_3/features/post/presentation/post_screen.dart' as _i7;
import 'package:test_3/features/post/presentation/posts_screen.dart' as _i8;
import 'package:test_3/features/post/presentation/wrapper/posts_wrapper.dart'
    as _i9;
import 'package:test_3/features/profile/presentation/profile_screen.dart'
    as _i10;

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapperRoute extends _i12.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i12.PageRouteInfo>? children})
    : super(AuthWrapperRoute.name, initialChildren: children);

  static const String name = 'AuthWrapperRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return _i12.WrappedRoute(child: const _i1.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i2.CreatePostScreen]
class CreatePostRoute extends _i12.PageRouteInfo<CreatePostRouteArgs> {
  CreatePostRoute({
    _i13.Key? key,
    required _i14.PostsBloc bloc,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         CreatePostRoute.name,
         args: CreatePostRouteArgs(key: key, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'CreatePostRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreatePostRouteArgs>();
      return _i2.CreatePostScreen(key: args.key, bloc: args.bloc);
    },
  );
}

class CreatePostRouteArgs {
  const CreatePostRouteArgs({this.key, required this.bloc});

  final _i13.Key? key;

  final _i14.PostsBloc bloc;

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
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.MainScreen]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainScreen();
    },
  );
}

/// generated route for
/// [_i5.NavBar]
class NavBarRoute extends _i12.PageRouteInfo<void> {
  const NavBarRoute({List<_i12.PageRouteInfo>? children})
    : super(NavBarRoute.name, initialChildren: children);

  static const String name = 'NavBarRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavBar();
    },
  );
}

/// generated route for
/// [_i6.NewPosts]
class NewPostsTab extends _i12.PageRouteInfo<void> {
  const NewPostsTab({List<_i12.PageRouteInfo>? children})
    : super(NewPostsTab.name, initialChildren: children);

  static const String name = 'NewPostsTab';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.NewPosts();
    },
  );
}

/// generated route for
/// [_i7.PostScreen]
class PostRoute extends _i12.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i13.Key? key,
    required _i15.PostModel post,
    required _i14.PostsBloc bloc,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(key: key, post: post, bloc: bloc),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i7.PostScreen(key: args.key, post: args.post, bloc: args.bloc);
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.post, required this.bloc});

  final _i13.Key? key;

  final _i15.PostModel post;

  final _i14.PostsBloc bloc;

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
/// [_i8.PostsScreen]
class PostsRoute extends _i12.PageRouteInfo<void> {
  const PostsRoute({List<_i12.PageRouteInfo>? children})
    : super(PostsRoute.name, initialChildren: children);

  static const String name = 'PostsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.PostsScreen();
    },
  );
}

/// generated route for
/// [_i9.PostsWrapper]
class PostsWrapperRoute extends _i12.PageRouteInfo<PostsWrapperRouteArgs> {
  PostsWrapperRoute({
    _i13.Key? key,
    required _i16.PostsCategory category,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         PostsWrapperRoute.name,
         args: PostsWrapperRouteArgs(key: key, category: category),
         initialChildren: children,
       );

  static const String name = 'PostsWrapperRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostsWrapperRouteArgs>();
      return _i12.WrappedRoute(
        child: _i9.PostsWrapper(key: args.key, category: args.category),
      );
    },
  );
}

class PostsWrapperRouteArgs {
  const PostsWrapperRouteArgs({this.key, required this.category});

  final _i13.Key? key;

  final _i16.PostsCategory category;

  @override
  String toString() {
    return 'PostsWrapperRouteArgs{key: $key, category: $category}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PostsWrapperRouteArgs) return false;
    return key == other.key && category == other.category;
  }

  @override
  int get hashCode => key.hashCode ^ category.hashCode;
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i11.RegistrationScreen]
class RegistrationRoute extends _i12.PageRouteInfo<void> {
  const RegistrationRoute({List<_i12.PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.RegistrationScreen();
    },
  );
}
