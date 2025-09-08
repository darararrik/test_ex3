import 'package:auto_route/auto_route.dart';
import 'package:flutter/src/widgets/framework.dart';

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
