import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: "AuthWrapperRoute")
class AuthWrapper extends StatelessWidget implements AutoRouteWrapper {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
