import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/widgets.dart';
import 'package:test_3/features/post/domain/models/post_model.dart';
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart';

@RoutePage()
class PostScreen extends StatelessWidget {
  const PostScreen({super.key, required this.post, required this.bloc});
  final PostModel post;
  final PostsBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(title: post.title),
          SliverPadding(
            padding: const P(horizontal: S.s16, top: S.s8, bottom: S.s32),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: S.s20,
                        child: Text(
                          post.createdAt.toFormattedString(),
                          style: context.text.caption.copyWith(
                            color: context.color.textSecondary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: S.s8),
                    ...[
                      PostImage(post: post),
                      Text(post.description, style: context.text.body6),
                      PostData(post: post, bloc: bloc),
                    ].separated(const SizedBox(height: S.s20)),
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
