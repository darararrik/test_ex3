import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/presentation/constants/s.dart';
import 'package:test_3/core/presentation/routing/router.gr.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/widgets.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                        context.l10n.login,
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
                      InputWidget(
                        controller: _emailController,
                        hintText: context.l10n.enterEmail,
                        labelText: context.l10n.email,
                      ),
                      const SizedBox(height: S.s16),
                      InputWidget(
                        controller: _passwordController,
                        hintText: context.l10n.enterPassword,
                        labelText: context.l10n.password,
                        isPassword: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const P(vertical: S.s20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UnderButtonText(
                          text: context.l10n.noAccount,
                          buttonText: context.l10n.register,
                          onPressed: () =>
                              context.replaceRoute(const RegistrationRoute()),
                        ),
                        PrimaryButton(
                          isEnabled: true,
                          onPressed: () {},
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
