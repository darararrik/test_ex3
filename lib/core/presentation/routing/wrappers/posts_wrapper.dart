import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/lib.dart';

@RoutePage()
class PostsWrapper extends StatelessWidget implements AutoRouteWrapper {
  const PostsWrapper({super.key, required this.category});
  final PostsCategory category;
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => PostsBloc(context.read()), child: this);
  }
}
