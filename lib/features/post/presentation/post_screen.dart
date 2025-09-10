import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/a_b.dart';
import 'package:test_3/core/presentation/widgets/post_data.dart';
import 'package:test_3/core/presentation/widgets/widgets.dart';

@RoutePage()
class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const AB(title: "Apple Love"),

          SliverPadding(
            padding: const P(horizontal: S.s16, top: S.s8, bottom: S.s32),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: S.s20,
                        child: Text(
                          "11.09.22",
                          style: context.text.caption.copyWith(
                            color: context.color.textSecondary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: S.s8),
                    ...[
                      const PostImage(),
                      Text("asdjnasjdknadsk" * 72, style: context.text.body6),
                      const PostData(),
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
