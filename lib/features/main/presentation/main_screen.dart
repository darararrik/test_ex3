import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/domain/models/user_model.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/state/profile/profile_bloc.dart';
import 'package:test_3/features/main/presentation/widgets/main_a_b.dart';
import 'package:test_3/features/main/presentation/widgets/new_posts.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
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
                        controller: _tabController,
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
        body: TabBarView(
          controller: _tabController,
          children: const [
            NewPosts(category: PostsCategory.neww),

            NewPosts(category: PostsCategory.top),
          ],
        ),
      ),
    );
  }
}
