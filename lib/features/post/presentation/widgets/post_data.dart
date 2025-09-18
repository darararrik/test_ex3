import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/widgets.dart';
import 'package:test_3/features/post/domain/domain.dart';
import 'package:test_3/features/post/presentation/presentation.dart';

class PostData extends StatelessWidget {
  const PostData({super.key, required this.post, required this.bloc});
  final PostModel post;
  final PostsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          final postt = state.posts.firstWhere((p) => post.id == p.id);
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
                    style: context.text.caption.copyWith(
                      color: context.color.textSecondary,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const P(all: S.s4),
                    child: GestureDetector(
                      onTap: () => bloc.add(PostsEvent.like(id: post.id)),
                      child: Visibility(
                        visible: !postt.isLiked,
                        replacement: GestureDetector(
                          onTap: () => bloc.add(PostsEvent.unlike(id: post.id)),
                          child: AppIcon(
                            AppIcons.heart,
                            width: Sz.s20,
                            color: context.color.iconAccent,
                          ),
                        ),
                        child: AppIcon(
                          AppIcons.heart,
                          width: Sz.s20,
                          color: context.color.iconSecondary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: S.s4),
                  Text(postt.likesCount.toString(), style: context.text.body6),
                  const SizedBox(width: S.s12),
                  GestureDetector(
                    onTap: () async => {
                      await SharePlus.instance.share(ShareParams(text: post.title)),
                    },
                    child: Padding(
                      padding: const P(all: S.s4),
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
        },
      ),
    );
  }
}
