import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/error_screen.dart';
import 'package:test_3/core/presentation/widgets/loading.dart';
import 'package:test_3/core/presentation/widgets/post_card.dart';
import 'package:test_3/core/state/posts/posts_bloc.dart';

class NewPosts extends StatefulWidget {
  const NewPosts({super.key, required this.category});
  final PostsCategory category;

  @override
  State<NewPosts> createState() => _NewPostsState();
}

class _NewPostsState extends State<NewPosts> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (context) => PostsBloc(context.read(), widget.category),
      child: Builder(
        builder: (context) {
          return RefreshIndicator(
            onRefresh: () async =>
                context.read<PostsBloc>().add(const PostsEvent.getPosts()),
            child: BlocBuilder<PostsBloc, PostsState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingScreen();
                }
                if (state.errorMessage != null) {
                  return const ErrorScreen();
                }
                return ListView.separated(
                  padding: const P(all: 0),
                  itemCount: state.posts.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: S.s4),
                  itemBuilder: (context, index) {
                    return PostCard(post: state.posts[index]);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
