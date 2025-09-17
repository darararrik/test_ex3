import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/widgets.dart';

class UploadZone extends StatelessWidget {
  const UploadZone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          dashPattern: [S.s10, S.s10],
          padding: const P(all: S.s1),
          strokeWidth: Sz.s1_5,
          radius: const Radius.circular(R.r24),
          color: context.color.borderDefault,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: context.color.bgSecondary,
            borderRadius: BorderRadius.circular(R.r24),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const P(vertical: S.s60),
              child: Column(
                children: [
                  AppIcon(
                    AppIcons.cloudArrowUp,
                    color: context.color.iconAccent,
                    height: Sz.s36,
                  ),
                  Text(context.l10n.uploadPhoto, style: context.text.body3),
                ].separated(const SizedBox(height: S.s8)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
