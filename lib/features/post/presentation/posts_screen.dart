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
  @override
  void initState() {
    super.initState();
    category = context.read<PostsBloc>().category;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<PostsBloc>().add(const PostsEvent.getPosts());
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            MainAB.ctg(category: category, context: context),
            PostsList(category: category),
          ],
        ),
      ),
    );
  }
}
