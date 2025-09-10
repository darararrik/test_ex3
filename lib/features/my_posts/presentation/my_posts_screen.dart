import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/buttons/create_f_a_b.dart';
import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';
import 'package:test_3/features/main/presentation/widgets/new_posts.dart';

@RoutePage()
class MyPostsScreen extends StatelessWidget {
  const MyPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CreateFAB(onPressed: () {}),
      body: CustomScrollView(
        slivers: [
          MainAB(title: context.l10n.myPosts),
          const SliverFillRemaining(child: NewPosts()),
        ],
      ),
    );
  }
}
