import 'package:flutter/material.dart';

import 'package:test_3/core/domain/models/post_model.dart';
import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/post_card.dart';

class NewPosts extends StatefulWidget {
  const NewPosts({super.key, required this.posts});
  final List<PostModel> posts;

  @override
  State<NewPosts> createState() => _NewPostsState();
}

class _NewPostsState extends State<NewPosts> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.separated(
      padding: const P(all: 0),
      itemCount: widget.posts.length,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: S.s4),
      itemBuilder: (context, index) {
        return PostCard(post: widget.posts[index]);
      },
    );
  }
}
