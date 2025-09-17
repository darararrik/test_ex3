import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/buttons/create_f_a_b.dart';
import 'package:test_3/core/presentation/widgets/empty_screen.dart';
import 'package:test_3/core/presentation/widgets/error_screen.dart';
import 'package:test_3/core/presentation/widgets/loading.dart';
import 'package:test_3/core/presentation/widgets/post_card.dart';
import 'package:test_3/core/state/posts/posts_bloc.dart';
import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';

@RoutePage()
class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = context.read<PostsBloc>().state.category;
    return RefreshIndicator(
      onRefresh: () async {
        context.read<PostsBloc>().add(const PostsEvent.getPosts());
      },
      child: Scaffold(
        floatingActionButton: category == PostsCategory.my
            ? CreateFAB(
                onPressed: () =>
                    context.pushRoute(CreatePostRoute(bloc: context.read<PostsBloc>())),
              )
            : null,
        body: CustomScrollView(
          slivers: [
            MainAB(
              title: category == PostsCategory.favorites
                  ? context.l10n.favorites
                  : context.l10n.myPosts,
            ),
            BlocBuilder<PostsBloc, PostsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return LoadingScreen.sliver();
                }
                if (state.errorMessage != null) {
                  return ErrorScreen.sliver();
                }
                if (state.posts.isEmpty) {
                  return EmptyScreen.sliver(
                    isFavorites: category == PostsCategory.favorites,
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.posts.length,
                    (context, index) => PostCard(
                      canDelete: category == PostsCategory.my,
                      post: state.posts[index],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
