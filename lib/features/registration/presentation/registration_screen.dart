import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/buttons/primary_button.dart';
import 'package:test_3/core/presentation/widgets/buttons/under_button_text.dart';
import 'package:test_3/core/presentation/widgets/input_widget.dart';
import 'package:test_3/core/state/auth/auth_bloc.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const P(horizontal: S.s16),
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
                        ),
                        InputWidget(
                          controller: _passwordController,
                          hintText: context.l10n.enterPassword,
                          labelText: context.l10n.password,
                          isPassword: true,
                        ),
                        InputWidget(
                          controller: _passwordRepeatController,
                          hintText: context.l10n.confirmYourPassword,
                          labelText: context.l10n.confirmPassword,
                          isPassword: true,
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
                        const SizedBox(height: S.s20),
                        PrimaryButton(
                          isEnabled: true,
                          onPressed: () => context.read<AuthBloc>().add(
                            AuthEvent.register(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                              passwordConfirm: _passwordRepeatController.text.trim(),
                            ),
                          ),
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
        ],
      ),
    );
  }
}
