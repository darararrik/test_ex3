import 'package:flutter/material.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/app_icon.dart';

class BGDelete extends StatelessWidget {
  const BGDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(color: context.color.negativeUniversal),
        alignment: Alignment.centerRight,
        padding: const P(right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(
              AppIcons.trash,
              width: S.s32,
              height: S.s32,
              color: context.color.iconOnColour,
            ),
            Text(
              context.l10n.delete,
              style: context.text.body3.copyWith(color: context.color.textOnColor),
            ),
          ].separated(const SizedBox(height: S.s8)),
        ),
      ),
    );
  }
}
