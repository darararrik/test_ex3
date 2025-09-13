import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/a_b.dart';
import 'package:test_3/features/profile/presentation/widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final TextEditingController _nameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _surnameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _countryController;
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _surnameController = TextEditingController();
    _phoneController = TextEditingController();
    _countryController = TextEditingController();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _surnameController.dispose();
    _phoneController.dispose();
    _countryController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AB(
            title: context.l10n.profile,
            actions: [
              TextButton(
                onPressed: context.pop,
                child: Text(
                  context.l10n.done,
                  style: context.text.body2.copyWith(
                    color: context.color.textButtonAccentInitial,
                    decoration: TextDecoration.underline,
                    decorationColor: context.color.textButtonAccentInitial,
                  ),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: const P(horizontal: S.s16, top: S.s12, bottom: S.s32),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Avatar(),
                  PersonalInfoBody(
                    nameController: _nameController,
                    lastNameController: _lastNameController,
                    surnameController: _surnameController,
                  ),
                  const GenderBody(),
                  const BDayBody(),
                  AccountInfoBody(
                    phoneController: _phoneController,
                    countryController: _countryController,
                    emailController: _emailController,
                  ),
                ].separated(const SizedBox(height: S.s32)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
