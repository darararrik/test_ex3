import 'package:flutter/material.dart';

import 'package:test_3/core/domain/models/post_model.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/widgets.dart';

class PostData extends StatelessWidget {
  const PostData({super.key, required this.post});
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(radius: S.s12),
            const SizedBox(width: S.s8),
            Text(
              post.author?.firstName ?? "Unknown",
              style: context.text.caption.copyWith(color: context.color.textSecondary),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const P(all: S.s4),
              child: AppIcon(
                AppIcons.heart,
                width: Sz.s20,
                color: context.color.iconSecondary,
              ),
            ),
            const SizedBox(width: S.s4),
            Text(post.likesCount.toString(), style: context.text.body6),
            const SizedBox(width: S.s12),
            Padding(
              padding: const P(all: S.s4),
              child: AppIcon(
                AppIcons.share,
                width: Sz.s20,
                color: context.color.iconPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
