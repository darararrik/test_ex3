import 'package:flutter/material.dart';

import 'package:group_button/group_button.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/features/profile/domain/enums/gender.dart';

class GenderBody extends StatelessWidget {
  const GenderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.gender, style: context.text.body1),
        const SizedBox(height: S.s16),
        GroupButton<Gender>(
          isRadio: true,
          buttons: const [Gender.female, Gender.male],
          buttonBuilder: (selected, Gender gender, context) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: Sz.s20,
                  height: Sz.s20,
                  decoration: BoxDecoration(
                    color: selected ? context.color.bgTertiary : null,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selected
                          ? context.color.bgTertiary
                          : context.color.borderDisabled,
                    ),
                  ),
                  child: selected
                      ? Center(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: context.color.iconAccent,
                            ),
                            child: const SizedBox(height: Sz.s8, width: Sz.s8),
                          ),
                        )
                      : null,
                ),
                const SizedBox(width: S.s8),
                Text(
                  gender.label(context),
                  style: context.text.body5.copyWith(color: context.color.textPrimary),
                ),
              ],
            );
          },
          options: const GroupButtonOptions(
            spacing: S.s16,
            direction: Axis.vertical,
            crossGroupAlignment: CrossGroupAlignment.start,
          ),
        ),
      ],
    );
  }
}
