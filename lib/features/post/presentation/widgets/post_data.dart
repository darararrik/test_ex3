import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/widgets.dart';
import 'package:test_3/features/post/presentation/presentation.dart';

class PostData extends StatelessWidget {
  const PostData({super.key, required this.id, required this.bloc});
  final String id;
  final PostsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          final post = state.posts.firstWhere((p) => p.id == id);
          final firstName = post.author.firstName ?? '';
          final lastName = post.author.lastName ?? '';
          final shortLastName = lastName.isNotEmpty ? ' ${lastName[0]}' : '';

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CachedImage(
                    imageUrl: post.author.avatarUrl,
                    borderRadius: S.s100,
                    width: S.s24,
                    height: S.s24,
                  ),
                  const SizedBox(width: S.s8),
                  Text(
                    '$firstName$shortLastName.',
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
                        visible: !post.isLiked,
                        replacement: GestureDetector(
                          onTap: () => bloc.add(PostsEvent.unlike(id: post.id)),
                          child: AppIcon(
                            AppIcons.heart,
                            width: S.s20,
                            color: context.color.iconAccent,
                          ),
                        ),
                        child: AppIcon(
                          AppIcons.heart,
                          width: S.s20,
                          color: context.color.iconSecondary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: S.s4),
                  Text(post.likesCount.toString(), style: context.text.body6),
                  const SizedBox(width: S.s12),
                  GestureDetector(
                    onTap: () async => {
                      await SharePlus.instance.share(ShareParams(text: post.title)),
                    },
                    child: Padding(
                      padding: const P(all: S.s4),
                      child: AppIcon(
                        AppIcons.share,
                        width: S.s20,
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
