import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/widgets/empty_screen.dart';
import 'package:test_3/core/presentation/widgets/error_screen.dart';
import 'package:test_3/core/presentation/widgets/loading.dart';
import 'package:test_3/core/presentation/widgets/post_card.dart';
import 'package:test_3/core/state/posts/posts_bloc.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.category});

  final PostsCategory category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      buildWhen: (previous, current) => previous.posts != current.posts,
      builder: (context, state) {
        if (state.isLoading) {
          return const SliverLoadingScreen();
        }
        if (state.errorMessage != null) {
          return const SliverErrorScreen();
        }
        if (state.posts.isEmpty) {
          return SliverEmptyScreen(category: category);
        }
        return SliverList.separated(
          itemCount: state.posts.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(
              canDelete: category == PostsCategory.my,
              post: state.posts[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: S.s4),
        );
      },
    );
  }
}
