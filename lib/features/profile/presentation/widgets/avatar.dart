import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/app_icon.dart';
import 'package:test_3/features/profile/presentation/widgets/avatar_pick_dialog.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.avatarUrl});
  final String avatarUrl;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () => showCupertinoModalPopup(
            context: context,
            builder: (context) => const AvatarPickDialog(),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: S.s80,
                backgroundImage: CachedNetworkImageProvider(avatarUrl),
              ),
              Positioned(
                right: constraints.maxWidth * 0.3,
                bottom: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.color.secondaryPressed,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const P(all: S.s8),
                    child: AppIcon(
                      AppIcons.camera,
                      width: Sz.s24,
                      color: context.color.iconContrast,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
