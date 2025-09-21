import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/a_b.dart';
import 'package:test_3/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:test_3/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:test_3/features/profile/presentation/cubit/bloc/edit_data_bloc.dart';
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
  late final TextEditingController _bdayController;
  late final GlobalKey<FormState> _key;
  @override
  void initState() {
    super.initState();
    final profile = context.read<ProfileBloc>().state.profile;
    _nameController = TextEditingController(text: profile.firstName);
    _lastNameController = TextEditingController(text: profile.lastName);
    _surnameController = TextEditingController(text: profile.middleName);
    _phoneController = TextEditingController(text: profile.phone);
    _countryController = TextEditingController(text: profile.country);
    _emailController = TextEditingController(text: profile.email);
    _bdayController = TextEditingController(text: profile.birthDate?.toFormattedString());
    _key = GlobalKey<FormState>();
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
      body: BlocProvider(
        create: (context) => EditDataBloc(),
        child: Builder(
          builder: (context) {
            return Form(
              key: _key,
              child: CustomScrollView(
                slivers: [
                  AB(
                    title: context.l10n.profile,
                    actions: [
                      TextButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          if (_key.currentState!.validate()) {
                            context.read<ProfileBloc>().add(
                              ProfileEvent.changeProfile(
                                email: _emailController.text.trim(),
                                imageAvatar: context
                                    .read<EditDataBloc>()
                                    .state
                                    .imageAvatar,
                                firstName: _nameController.text.trim(),
                                lastName: _lastNameController.text.trim(),
                                birthDate: context.read<EditDataBloc>().state.bDay,
                                country: _countryController.text.trim(),
                                middleName: _surnameController.text.trim(),
                                phone: _phoneController.text.trim(),
                                gender: context.read<EditDataBloc>().state.gender,
                              ),
                            );
                          }
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
                              Avatar(avatarUrl: state.user.avatarUrl),
                              PersonalInfoBody(
                                nameController: _nameController,
                                lastNameController: _lastNameController,
                                surnameController: _surnameController,
                              ),
                              const GenderBody(),
                              BDayBody(bdayController: _bdayController),
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
          },
        ),
      ),
    );
  }
}
