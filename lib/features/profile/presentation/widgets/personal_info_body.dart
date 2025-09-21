import 'package:flutter/material.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/widgets/input_widget.dart';

class PersonalInfoBody extends StatelessWidget {
  const PersonalInfoBody({
    super.key,
    required TextEditingController nameController,
    required TextEditingController lastNameController,
    required TextEditingController surnameController,
  }) : _nameController = nameController,
       _lastNameController = lastNameController,
       _surnameController = surnameController;

  final TextEditingController _nameController;
  final TextEditingController _lastNameController;
  final TextEditingController _surnameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.personalInfo, style: context.text.body1),
        InputWidget(
          controller: _nameController,
          labelText: context.l10n.fName,
          hintText: context.l10n.enterFirstName,
        ),
        InputWidget(
          controller: _lastNameController,
          labelText: context.l10n.lName,
          hintText: context.l10n.enterLastName,
        ),
        InputWidget(
          controller: _surnameController,
          labelText: context.l10n.sName,
          hintText: context.l10n.enterSurname,
        ),
      ].separated(const SizedBox(height: S.s16)),
    );
  }
}
