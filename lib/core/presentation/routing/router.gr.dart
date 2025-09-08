// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:test_3/core/presentation/routing/wrappers/auth_wrapper.dart'
    as _i1;
import 'package:test_3/features/login/presentation/login_screen.dart' as _i2;
import 'package:test_3/features/registration/presentation/registration_screen.dart'
    as _i3;

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapperRoute extends _i4.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuthWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapperRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return _i4.WrappedRoute(child: const _i1.AuthWrapper());
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.RegistrationScreen]
class RegistrationRoute extends _i4.PageRouteInfo<void> {
  const RegistrationRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.RegistrationScreen();
    },
  );
}
