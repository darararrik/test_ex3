import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/app_icon.dart';
import 'package:test_3/core/state/cubit/password_visibility_cubit.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.enabled = true,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.filled,
    this.fillColor,
    this.contentPadding,
    this.validator,
    this.onTap,
  });
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool? filled;
  final Color? fillColor;
  final EdgeInsets? contentPadding;
  final bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: Builder(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (labelText != null)
                Text(
                  labelText!,
                  style: context.text.headline2.copyWith(
                    color: context.color.textSecondary,
                  ),
                ),
              TextFormField(
                onTap: onTap,
                controller: controller,
                enabled: enabled,
                obscureText: isPassword
                    ? !context.watch<PasswordVisibilityCubit>().state
                    : obscureText,
                keyboardType: keyboardType,
                textInputAction: textInputAction,
                onChanged: onChanged,
                style: context.text.body5,
                validator: validator,
                decoration: InputDecoration(
                  filled: filled,
                  fillColor: fillColor,
                  hintText: hintText,
                  hintStyle: context.text.body5.copyWith(
                    color: context.color.textSecondary,
                  ),
                  contentPadding: contentPadding ?? const P(top: S.s12, bottom: S.s16),
                  border: border,
                  enabledBorder: enabledBorder,
                  focusedBorder: focusedBorder,
                  suffixIcon: Visibility(
                    visible: isPassword,
                    child: IconButton(
                      onPressed: context.read<PasswordVisibilityCubit>().toggleVisibility,
                      icon: BlocBuilder<PasswordVisibilityCubit, bool>(
                        builder: (context, isVisible) {
                          return AppIcon(
                            isVisible ? AppIcons.eyeOpen : AppIcons.eyeClosed,
                            color: context.color.textSecondary,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
