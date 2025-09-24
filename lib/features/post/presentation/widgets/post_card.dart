import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/features/post/domain/models/post/post_model.dart';
import 'package:test_3/features/post/presentation/presentation.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, this.canDelete = false, required this.post});
  final bool canDelete;
  final PostModel post;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (canDelete) const BGDelete(),
        Dismissible(
          direction: canDelete ? DismissDirection.endToStart : DismissDirection.none,
          onDismissed: (direction) =>
              context.read<PostsBloc>().add(PostsEvent.delete(id: post.id)),
          key: ValueKey(post.id),
          child: DecoratedBox(
            decoration: BoxDecoration(color: context.color.bgSecondary),
            child: Padding(
              padding: const P(top: S.s24, bottom: S.s32, horizontal: S.s20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => context.pushRoute(
                      PostRoute(post: post, bloc: context.read<PostsBloc>()),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                post.title,
                                style: context.text.body2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              post.createdAt.toFormattedString(),
                              style: context.text.body6.copyWith(
                                color: context.color.textSecondary,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: S.s12),
                        PostImage(post: post),
                      ],
                    ),
                  ),
                  const SizedBox(height: S.s20),
                  PostData(id: post.id, bloc: context.read<PostsBloc>()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
