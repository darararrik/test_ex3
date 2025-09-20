import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart';
import 'package:test_3/features/post/presentation/widgets/create_f_a_b.dart';

@RoutePage(name: "PostsWrapperRoute")
class PostsWrapper extends StatelessWidget implements AutoRouteWrapper {
  const PostsWrapper({super.key, required this.category});
  final PostsCategory category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: category == PostsCategory.my
          ? CreateFAB(
              onPressed: () =>
                  context.pushRoute(CreatePostRoute(bloc: context.read<PostsBloc>())),
            )
          : null,
      body: const AutoRouter(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc(context.read(), category),
      child: this,
    );
  }
}
