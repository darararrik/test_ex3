import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';

class SliverEmptyScreen extends StatelessWidget {
  const SliverEmptyScreen({super.key, required this.category});
  final PostsCategory category;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: -math.pi / 36,
            child: DecoratedBox(
              decoration: BoxDecoration(color: context.color.primaryPressed),
              child: Padding(
                padding: const P(horizontal: S.s32, vertical: S.s8),
                child: Text(
                  context.l10n.oops,
                  style: context.text.title1.copyWith(color: context.color.textContrast),
                ),
              ),
            ),
          ),
          SizedBox(
            width: S.s210,
            child: Text(
              category == PostsCategory.favorites
                  ? context.l10n.emptyFavorites
                  : context.l10n.emptyPosts,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: context.text.body5,
            ),
          ),
        ].separated(const SizedBox(height: S.s36)),
      ),
    );
  }
}
