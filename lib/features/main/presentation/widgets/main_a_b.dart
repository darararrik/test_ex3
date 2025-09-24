import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/cached_image.dart';
import 'package:test_3/features/nav/presentation/cubit/drawer_cubit.dart';
import 'package:test_3/features/post/domain/enums/posts_category.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';
import 'package:test_3/features/profile/presentation/bloc/bloc.dart';

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
          BlocSelector<ProfileBloc, ProfileState, UserModel>(
            selector: (state) => state.profile,
            builder: (context, user) {
              return GestureDetector(
                onTap: () => context.read<DrawerCubit>().openDrawer(),
                child: CachedImage(
                  borderRadius: S.s20,
                  imageUrl: user.avatarUrl,
                  width: S.s40,
                  height: S.s40,
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
