import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/post_data.dart';
import 'package:test_3/core/presentation/widgets/widgets.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, this.canDelete = false, required this.index});
  final bool canDelete;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (canDelete) const BGDelete(),
        Dismissible(
          direction: canDelete ? DismissDirection.endToStart : DismissDirection.none,
          key: ValueKey(index),
          child: DecoratedBox(
            decoration: BoxDecoration(color: context.color.bgSecondary),
            child: Padding(
              padding: const P(top: S.s24, bottom: S.s32, horizontal: S.s20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => context.pushRoute(const PostRoute()),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Apple Love", style: context.text.body2),
                            Text(
                              "11.09.22",
                              style: context.text.body6.copyWith(
                                color: context.color.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: S.s12),
                        const PostImage(),
                      ],
                    ),
                  ),
                  const SizedBox(height: S.s20),
                  const PostData(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
