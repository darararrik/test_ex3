import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/core/theme/app_theme.dart';
import 'package:test_3/core/theme/cubit/theme_cubit.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/cached_image.dart';
import 'package:test_3/core/widgets/icon_text.dart';
import 'package:test_3/features/auth/presentation/bloc/bloc.dart';
import 'package:test_3/features/profile/presentation/bloc/profile_bloc.dart';

class ADrawer extends StatelessWidget {
  const ADrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const P(horizontal: S.s32, top: S.s80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedImage(
                          borderRadius: R.r40,
                          imageUrl: state.profile.avatarUrl,
                          width: S.s80,
                          height: S.s80,
                        ),
                        Text(
                          "${state.profile.firstName} ${state.profile.lastName}",
                          style: context.text.title4,
                        ),
                      ].separated(const SizedBox(height: S.s12)),
                    );
                  },
                ),
                const SizedBox(height: S.s60),
                IconText(
                  iconPath: AppIcons.user,
                  text: context.l10n.profile,
                  onTap: () => context.pushRoute(const ProfileRoute()),
                ),
                const SizedBox(height: S.s32),
                IconText(
                  iconPath: AppIcons.exit,
                  text: context.l10n.exit,
                  onTap: () {
                    context.read<AuthBloc>().add(const AuthEvent.logout());
                    context.replaceRoute(const AuthWrapperRoute());
                  },
                ),
              ],
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                final isLight = state.theme == AppTheme.lightTheme;
                final themeText = isLight
                    ? context.l10n.lightTheme
                    : context.l10n.nightTheme;
                return Padding(
                  padding: const P(bottom: S.s40),
                  child: IconText(
                    iconPath: AppIcons.sun,
                    text: themeText,
                    onTap: () => context.read<ThemeCubit>().toggleTheme(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
