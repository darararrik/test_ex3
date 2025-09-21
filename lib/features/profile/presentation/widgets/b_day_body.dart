import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/widgets/input_widget.dart';
import 'package:test_3/features/profile/presentation/cubit/bloc/edit_data_bloc.dart';
import 'package:test_3/features/profile/presentation/extensions/string_x.dart';
import 'package:test_3/features/profile/presentation/widgets/date_picker.dart';

class BDayBody extends StatelessWidget {
  const BDayBody({super.key, required this.bdayController});
  final TextEditingController bdayController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.dateOfBirth, style: context.text.body1),
        InputWidget(
          readOnly: true,
          controller: bdayController,
          labelText: context.l10n.bDay,
          hintText: context.l10n.enterBDay,
          onTap: () => showCupertinoModalPopup(
            context: context,
            builder: (BuildContext builder) {
              final initialDate = bdayController.text.toDateOrNull() ?? DateTime.now();
              return DatePicker(
                initialDate: initialDate,
                onConfirm: (DateTime selectedDate) {
                  bdayController.text = selectedDate.toFormattedString();
                  context.read<EditDataBloc>().add(
                    EditDataEvent.edit(bDay: selectedDate),
                  );
                },
              );
            },
          ),
        ),
      ].separated(const SizedBox(height: S.s16)),
    );
  }
}
