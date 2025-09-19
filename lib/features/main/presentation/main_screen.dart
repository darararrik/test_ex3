import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/features/auth/auth.dart';
import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        PostsWrapperRoute(category: PostsCategory.neww),
        PostsWrapperRoute(category: PostsCategory.top),
      ],
      builder: (context, child, tabController) {
        return NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
            BlocSelector<AuthBloc, AuthState, UserModel>(
              selector: (state) => state.user,
              builder: (context, user) {
                return MainAB(
                  title: user.firstName != null
                      ? "${context.l10n.hello} ${user.firstName}!"
                      : context.l10n.hello,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(S.s96),
                    child: Padding(
                      padding: const P(horizontal: S.s16, vertical: S.s20),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: context.color.bgSecondary,
                          borderRadius: BorderRadius.circular(S.s16),
                        ),
                        child: TabBar(
                          controller: tabController,
                          tabs: [
                            Tab(text: context.l10n.neww),
                            Tab(text: context.l10n.top),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
          body: child,
        );
      },
    );
  }
}
