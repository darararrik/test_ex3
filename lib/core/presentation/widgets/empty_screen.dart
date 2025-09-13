import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/constants/sz.dart';
import 'package:test_3/core/presentation/utils/utils.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key, required this.isFavorites});
  final bool isFavorites;
  static SliverFillRemaining sliver({required bool isFavorites}) =>
      SliverFillRemaining(child: EmptyScreen(isFavorites: isFavorites));
  @override
  Widget build(BuildContext context) {
    return Column(
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
          width: Sz.s210,
          child: Text(
            isFavorites ? context.l10n.emptyFavorites : context.l10n.emptyPosts,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: context.text.body5,
          ),
        ),
      ].separated(const SizedBox(height: S.s36)),
    );
  }
}
