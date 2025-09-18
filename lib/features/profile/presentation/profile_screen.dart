import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/a_b.dart';
import 'package:test_3/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:test_3/features/profile/presentation/bloc/profile_bloc.dart';
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

    _nameController = TextEditingController(
      text: context.read<ProfileBloc>().state.profile?.firstName,
    );
    _lastNameController = TextEditingController(
      text: context.read<ProfileBloc>().state.profile?.lastName,
    );
    _surnameController = TextEditingController(
      text: context.read<ProfileBloc>().state.profile?.middleName,
    );
    _phoneController = TextEditingController(
      text: context.read<ProfileBloc>().state.profile?.phone,
    );
    _countryController = TextEditingController(
      text: context.read<ProfileBloc>().state.profile?.country,
    );
    _emailController = TextEditingController(
      text: context.read<ProfileBloc>().state.profile?.email,
    );
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
                onPressed: () {
                  //TODO: переделать

                  // context.read<ProfileBloc>().add(
                  //   ProfileEvent.changeProfile(
                  //     profile: UserModel(
                  //       email: _emailController.text.trim(),
                  //       avatarUrl: "",
                  //       firstName: _nameController.text.trim(),
                  //       lastName: _lastNameController.text.trim(),
                  //       birthDate: DateTime.now(),
                  //       country: '',
                  //       middleName: '',
                  //       phone: '',
                  //       gender: Gend,
                  //     ),
                  //   ),
                  // );
                  context.pop();
                },
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
            sliver: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Avatar(avatarUrl: state.user?.avatarUrl ?? ""),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
