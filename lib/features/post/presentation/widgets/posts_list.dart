import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/widgets/loading.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart';
import 'package:test_3/features/post/presentation/widgets/empty_screen.dart';
import 'package:test_3/features/post/presentation/widgets/error_screen.dart';
import 'package:test_3/features/post/presentation/widgets/post_card.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key, required this.category});

  final PostsCategory category;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        if (state.isLoading && state.posts.isEmpty) {
          return const SliverLoadingScreen();
        }
        if (state.errorMessage != null && state.posts.isEmpty) {
          return const SliverErrorScreen();
        }
        if (state.posts.isEmpty) {
          return SliverEmptyScreen(category: category);
        }

        return SliverList.separated(
          itemCount: state.posts.length + (state.hasMore ? 1 : 0),
          itemBuilder: (BuildContext context, int index) {
            if (index >= state.posts.length) {
              // индикатор загрузки внизу
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              );
            }
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
