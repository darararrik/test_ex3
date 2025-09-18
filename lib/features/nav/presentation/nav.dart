import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/core/widgets/widgets.dart';
import 'package:test_3/features/nav/presentation/presentation.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';

@RoutePage(name: 'NavBarRoute')
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerCubit = context.read<DrawerCubit>();
    return AutoTabsScaffold(
      scaffoldKey: drawerCubit.state,
      routes: [
        const MainRoute(),
        PostsWrapperRoute(category: PostsCategory.favorites),
        PostsWrapperRoute(category: PostsCategory.my),
      ],
      drawer: const ADrawer(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(R.r24)),
          child: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: (index) {
              tabsRouter.setActiveIndex(index);
            },
            destinations: [
              NavigationDestination(
                icon: AppIcon(AppIcons.home, color: context.color.iconTertiary),
                selectedIcon: AppIcon(AppIcons.home, color: context.color.iconAccent),
                label: context.l10n.main,
              ),
              NavigationDestination(
                icon: AppIcon(AppIcons.bookmark, color: context.color.iconTertiary),
                selectedIcon: AppIcon(AppIcons.bookmark, color: context.color.iconAccent),
                label: context.l10n.favorites,
              ),
              NavigationDestination(
                icon: AppIcon(AppIcons.photo, color: context.color.iconTertiary),
                selectedIcon: AppIcon(AppIcons.photo, color: context.color.iconAccent),
                label: context.l10n.myPosts,
              ),
            ],
          ),
        );
      },
    );
  }
}
