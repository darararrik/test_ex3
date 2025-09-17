import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/lib.dart';

class MainAB extends StatelessWidget {
  const MainAB({super.key, this.bottom, required this.title});
  factory MainAB.ctg({required PostsCategory category, required BuildContext context}) =>
      MainAB(
        title: category == PostsCategory.favorites
            ? context.l10n.favorites
            : context.l10n.myPosts,
      );
  final PreferredSizeWidget? bottom;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const P(top: S.s16, bottom: S.s20),
      sliver: SliverAppBar(
        automaticallyImplyLeading: false,
        actionsPadding: const P(horizontal: S.s16),
        title: Text(title),
        centerTitle: false,
        actions: [
          BlocSelector<AuthBloc, AuthState, UserModel?>(
            selector: (state) => state.isAuthorized ? state.user : null,
            builder: (context, user) {
              return GestureDetector(
                onTap: () => context.read<DrawerCubit>().openDrawer(),
                child: CircleAvatar(
                  radius: S.s20,
                  backgroundImage: CachedNetworkImageProvider(user?.avatarUrl ?? ""),
                ),
              );
            },
          ),
        ],
        bottom: bottom,
      ),
    );
  }
}
