import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/state/cubit/drawer_cubit.dart';

class MainAB extends StatelessWidget {
  const MainAB({super.key, required TabController tabController})
    : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    //TODO: Переписать
    return SliverPadding(
      padding: const P(top: S.s16, bottom: S.s20),
      sliver: SliverAppBar(
        automaticallyImplyLeading: false,
        actionsPadding: const P(horizontal: S.s16),
        title: Text("Hello John!", style: context.text.title2),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () => context.read<DrawerCubit>().openDrawer(),
            child: const CircleAvatar(radius: S.s20),
          ),
        ],
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
                controller: _tabController,
                tabs: [
                  Tab(text: context.l10n.neww),
                  Tab(text: context.l10n.top),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
