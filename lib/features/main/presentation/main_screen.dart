import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/state/profile/profile_bloc.dart';
import 'package:test_3/lib.dart';

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
            BlocSelector<ProfileBloc, ProfileState, UserModel?>(
              selector: (state) => state.profile,
              builder: (context, user) {
                return MainAB(
                  title: 'Hello ${user?.firstName}!',
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
