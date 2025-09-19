import 'package:flutter/cupertino.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/app_icon.dart';
import 'package:test_3/core/widgets/cached_image.dart';
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
              CachedImage(imageUrl: avatarUrl, width: Sz.s160, height: Sz.s160),
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
