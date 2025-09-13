import 'package:flutter/material.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/input_widget.dart';

class BDayBody extends StatelessWidget {
  const BDayBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.dateOfBirth, style: context.text.body1),
        InputWidget(
          labelText: context.l10n.bDay,
          hintText: context.l10n.enterBDay,
          onTap: () => showDatePicker(
            context: context,
            firstDate: DateTime.fromMicrosecondsSinceEpoch(0),
            lastDate: DateTime.now(),
          ),
        ),
      ].separated(const SizedBox(height: S.s16)),
    );
  }
}
