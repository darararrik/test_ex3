import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/post_card.dart';

class NewPosts extends StatelessWidget {
  const NewPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const P(all: 0),
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: S.s4),
      itemBuilder: (context, index) {
        return PostCard(index: index);
      },
    );
  }
}
