import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_button/group_button.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:test_3/features/profile/presentation/cubit/bloc/edit_data_bloc.dart';

class GenderBody extends StatelessWidget {
  const GenderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(context.l10n.gender, style: context.text.body1),
          const SizedBox(height: S.s16),
          GroupButton<Gender>(
            controller: GroupButtonController(
              selectedIndex: context.read<ProfileBloc>().state.profile.gender?.value,
            ),
            isRadio: true,
            buttons: Gender.values,
            onSelected: (Gender gender, int index, bool isSelected) =>
                context.read<EditDataBloc>().add(EditDataEvent.edit(gender: gender)),
            buttonBuilder: (selected, Gender gender, context) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: S.s20,
                    height: S.s20,
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
                              child: const SizedBox(height: S.s8, width: S.s8),
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
      ),
    );
  }
}
