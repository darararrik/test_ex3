import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_3/lib.dart';

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
            CircleAvatar(
              radius: S.s12,
              backgroundImage: CachedNetworkImageProvider(post.author.avatarUrl),
            ),
            const SizedBox(width: S.s8),
            Text(
              "${post.author.firstName} ${post.author.lastName[0]}.",
              style: context.text.caption.copyWith(color: context.color.textSecondary),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const P(all: S.s4),
              child: Visibility(
                visible: !post.isLiked,
                replacement: GestureDetector(
                  onTap: () =>
                      context.read<PostsBloc>().add(PostsEvent.unlike(id: post.id)),
                  child: AppIcon(
                    AppIcons.heart,
                    width: Sz.s20,
                    color: context.color.iconAccent,
                  ),
                ),
                child: GestureDetector(
                  onTap: () =>
                      context.read<PostsBloc>().add(PostsEvent.like(id: post.id)),
                  child: AppIcon(
                    AppIcons.heart,
                    width: Sz.s20,
                    color: context.color.iconSecondary,
                  ),
                ),
              ),
            ),
            const SizedBox(width: S.s4),
            Text(post.likesCount.toString(), style: context.text.body6),
            const SizedBox(width: S.s12),
            Padding(
              padding: const P(all: S.s4),
              child: GestureDetector(
                onTap: () async => {
                  await SharePlus.instance.share(ShareParams(text: post.title)),
                },
                child: AppIcon(
                  AppIcons.share,
                  width: Sz.s20,
                  color: context.color.iconPrimary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
