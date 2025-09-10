// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/presentation/constants/app_icons.dart';
import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/icon_text.dart';
import 'package:test_3/core/state/cubit/theme_cubit.dart';

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
                Column(
                  children: [
                    const CircleAvatar(radius: S.s40),
                    Text("John Moor", style: context.text.title4),
                  ].separated(const SizedBox(height: S.s12)),
                ),
                const SizedBox(height: S.s60),
                IconText(
                  iconPath: AppIcons.user,
                  text: context.l10n.profile,
                  onTap: () => context.pushRoute(const ProfileRoute()),
                ),
                const SizedBox(height: S.s32),
                IconText(iconPath: AppIcons.exit, text: context.l10n.exit, onTap: () {}),
              ],
            ),
            Padding(
              padding: const P(bottom: S.s40),
              child: IconText(
                iconPath: AppIcons.sun,
                text: context.l10n.lightTheme,
                onTap: () => context.read<ThemeCubit>().toggleTheme(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
