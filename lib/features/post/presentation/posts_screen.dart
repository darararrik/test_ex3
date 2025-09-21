import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart';
import 'package:test_3/features/post/presentation/widgets/posts_list.dart';

@RoutePage()
class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  late final PostsCategory category;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    final bloc = context.read<PostsBloc>();
    category = bloc.category;

    _scrollController = ScrollController()..addListener(_onScroll);

    bloc.add(const PostsEvent.getPosts());
  }

  void _onScroll() {
    final bloc = context.read<PostsBloc>();
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        bloc.state.hasMore &&
        !bloc.state.isLoading) {
      bloc.add(const PostsEvent.getPostsMore());
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<PostsBloc>().add(const PostsEvent.getPosts());
      },
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            MainAB.ctg(category: category, context: context),
            PostsList(category: category),
          ],
        ),
      ),
    );
  }
}
