import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/p.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key, required this.onConfirm, this.initialDate});
  final DateTime? initialDate;

  final Function(DateTime selectedDate) onConfirm;
  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate ?? DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.s16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.color.bgPrimary,
                borderRadius: BorderRadius.circular(S.s16),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const P(vertical: S.s16),
                    child: Text(
                      context.l10n.titleDatePicker,
                      style: context.text.body2.copyWith(
                        decoration: TextDecoration.none,
                        color: context.color.textSecondary,
                      ),
                    ),
                  ),
                  const Divider(),
                  SizedBox(
                    height: MediaQuery.of(context).copyWith().size.height / S.s3_5,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (DateTime newDateTime) {
                        _selectedDate = newDateTime;
                      },
                      initialDateTime: _selectedDate,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: S.s8),
            DecoratedBox(
              decoration: BoxDecoration(
                color: context.color.bgPrimary,
                borderRadius: BorderRadius.circular(S.s15),
              ),
              position: DecorationPosition.background,
              child: Column(
                children: [
                  CupertinoButton(
                    minimumSize: const Size(double.infinity, S.s44),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(S.s15),
                    ),

                    color: context.color.bgPrimary,
                    padding: const P(vertical: S.s12),
                    onPressed: () {
                      widget.onConfirm.call(_selectedDate);
                      context.pop();
                    },
                    child: Text(
                      context.l10n.confirm,
                      style: context.text.body2.copyWith(
                        color: context.color.textPositive,
                      ),
                    ),
                  ),
                  const Divider(),
                  CupertinoButton(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(S.s15),
                    ),
                    minimumSize: const Size(double.infinity, S.s44),
                    color: context.color.bgPrimary,
                    padding: const P(vertical: S.s12),
                    onPressed: () => context.pop(),
                    child: Text(
                      context.l10n.cancel,
                      style: context.text.body2.copyWith(
                        color: context.color.negativeUniversal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
