import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/routing/router.gr.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/widgets.dart';
import 'package:test_3/features/auth/presentation/presentation.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordRepeatController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordRepeatController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
    super.dispose();
  }

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const P(horizontal: S.s16),
              child: Form(
                key: _key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: S.s180),
                        Text(
                          context.l10n.joinUs,
                          style: context.text.title3.copyWith(
                            fontWeight: FontWeight.w400,
                            color: context.color.textAccent,
                          ),
                        ),
                        const SizedBox(height: S.s4),
                        Text(
                          context.l10n.youWillBeAbleToFullyCommunicate,
                          style: context.text.body5,
                        ),
                        const SizedBox(height: S.s40),
                        ...[
                          InputWidget(
                            controller: _emailController,
                            hintText: context.l10n.enterEmail,
                            labelText: context.l10n.email,
                            validator: (value) => validatorEmail(value, context),
                          ),
                          InputWidget(
                            controller: _passwordController,
                            hintText: context.l10n.enterPassword,
                            labelText: context.l10n.password,
                            isPassword: true,
                            validator: (value) => shortPasswordValidator(value, context),
                          ),
                          InputWidget(
                            controller: _passwordRepeatController,
                            hintText: context.l10n.confirmYourPassword,
                            labelText: context.l10n.confirmPassword,
                            isPassword: true,
                            validator: (value) => matchPasswordcValidator(
                              value,
                              context,
                              _passwordController,
                            ),
                          ),
                        ].separated(const SizedBox(height: S.s16)),
                      ],
                    ),
                    Padding(
                      padding: const P(vertical: S.s20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          UnderButtonText(
                            text: context.l10n.alreadyAccount,
                            buttonText: context.l10n.login,
                            onPressed: () => context.replaceRoute(const LoginRoute()),
                          ),
                          PrimaryButton(
                            isEnabled: true,
                            onPressed: () {
                              if (_key.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                  AuthEvent.register(
                                    email: _emailController.text.trim(),
                                    password: _passwordController.text.trim(),
                                    passwordConfirm: _passwordRepeatController.text
                                        .trim(),
                                  ),
                                );
                              }
                            },
                            text: context.l10n.continu,
                          ),
                          const SizedBox(height: S.s42),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
