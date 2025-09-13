import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/state/auth/auth_bloc.dart';

@RoutePage(name: "AuthWrapperRoute")
class AuthWrapper extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(context.read()),
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.isAuthorized && !state.isLoading) {
            context.replaceRoute(const NavBarRoute());
          }
        },
        child: this,
      ),
    );
  }
}
