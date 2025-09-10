import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/utils/extensions/build_context_x.dart';
import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';
import 'package:test_3/features/main/presentation/widgets/new_posts.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        MainAB(title: context.l10n.favorites),
        const SliverFillRemaining(child: NewPosts()),
      ],
    );
  }
}
