import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/buttons/create_f_a_b.dart';
import 'package:test_3/core/presentation/widgets/post_card.dart';
import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';

@RoutePage()
class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key, required this.isFavorites});
  final bool isFavorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: !isFavorites
          ? CreateFAB(onPressed: () => context.pushRoute(const CreatePostRoute()))
          : null,
      body: CustomScrollView(
        slivers: [
          MainAB(title: isFavorites ? context.l10n.favorites : context.l10n.myPosts),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => PostCard(index: index, canDelete: !isFavorites),
            ),
          ),
        ],
      ),
    );
  }
}
