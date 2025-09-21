import 'package:flutter/material.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/widgets/input_widget.dart';

class AccountInfoBody extends StatelessWidget {
  const AccountInfoBody({
    super.key,
    required TextEditingController phoneController,
    required TextEditingController countryController,
    required TextEditingController emailController,
  }) : _phoneController = phoneController,
       _countryController = countryController,
       _emailController = emailController;

  final TextEditingController _phoneController;
  final TextEditingController _countryController;
  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.l10n.accountInfo, style: context.text.body1),
        InputWidget(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return context.l10n.enterPhone;
            }
            return null;
          },
          controller: _phoneController,
          labelText: context.l10n.phoneNumber,
          hintText: context.l10n.enterPhone,
        ),
        InputWidget(
          controller: _countryController,
          labelText: context.l10n.country,
          hintText: context.l10n.enterCountry,
        ),
        InputWidget(
          controller: _emailController,
          labelText: context.l10n.email,
          hintText: context.l10n.enterEmail,
        ),
      ].separated(const SizedBox(height: S.s16)),
    );
  }
}
