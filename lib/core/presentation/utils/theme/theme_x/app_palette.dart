import 'package:flutter/material.dart';

class AppPalette extends ThemeExtension<AppPalette> {
  AppPalette({
    required this.bgPrimary,
    required this.bgSecondary,
    required this.bgTertiary,
    required this.bgOverlay,
    required this.borderDefault,
    required this.borderAccent,
    required this.borderDisabled,
    required this.borderPositive,
    required this.borderNegative,
    required this.borderUnderline,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textContrast,
    required this.textOnColor,
    required this.textAccent,
    required this.textPositive,
    required this.textNegative,
    required this.textDisabled,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.iconTertiary,
    required this.iconContrast,
    required this.iconOnColour,
    required this.iconAccent,
    required this.iconPositive,
    required this.iconNegative,
    required this.iconDisabled,
    required this.iconInitial,
    required this.primaryInitial,
    required this.primaryLoading,
    required this.primaryPressed,
    required this.primaryDisabled,
    required this.negativeUniversal,
    required this.secondaryInitial,
    required this.secondaryLoading,
    required this.secondaryPressed,
    required this.secondaryDisabled,
    required this.textButtonInitial,
    required this.textButtonPressed,
    required this.textButtonDisabled,
    required this.textButtonAccentInitial,
    required this.textButtonAccentPressed,
    required this.textButtonAccentDisabled,
  });
  final Color bgPrimary;
  final Color bgSecondary;
  final Color bgTertiary;
  final Color bgOverlay;
  final Color borderDefault;
  final Color borderAccent;
  final Color borderDisabled;
  final Color borderPositive;
  final Color borderNegative;
  final Color borderUnderline;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textContrast;
  final Color textOnColor;
  final Color textAccent;
  final Color textPositive;
  final Color textNegative;
  final Color textDisabled;
  final Color iconPrimary;
  final Color iconSecondary;
  final Color iconTertiary;
  final Color iconContrast;
  final Color iconOnColour;
  final Color iconAccent;
  final Color iconPositive;
  final Color iconNegative;
  final Color iconDisabled;
  final Color iconInitial;
  final Color primaryInitial;
  final Color primaryLoading;
  final Color primaryPressed;
  final Color primaryDisabled;
  final Color negativeUniversal;
  final Color secondaryInitial;
  final Color secondaryLoading;
  final Color secondaryPressed;
  final Color secondaryDisabled;
  final Color textButtonInitial;
  final Color textButtonPressed;
  final Color textButtonDisabled;
  final Color textButtonAccentInitial;
  final Color textButtonAccentPressed;
  final Color textButtonAccentDisabled;

  @override
  ThemeExtension<AppPalette> copyWith({
    Color? bgPrimary,
    Color? bgSecondary,
    Color? bgTertiary,
    Color? bgOverlay,
    Color? borderDefault,
    Color? borderAccent,
    Color? borderDisabled,
    Color? borderPositive,
    Color? borderNegative,
    Color? borderUnderline,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textContrast,
    Color? textOnColor,
    Color? textAccent,
    Color? textPositive,
    Color? textNegative,
    Color? textDisabled,
    Color? iconPrimary,
    Color? iconSecondary,
    Color? iconTertiary,
    Color? iconContrast,
    Color? iconOnColour,
    Color? iconAccent,
    Color? iconPositive,
    Color? iconNegative,
    Color? iconDisabled,
    Color? iconInitial,
    Color? primaryInitial,
    Color? primaryLoading,
    Color? primaryPressed,
    Color? primaryDisabled,
    Color? negativeUniversal,
    Color? secondaryInitial,
    Color? secondaryLoading,
    Color? secondaryPressed,
    Color? secondaryDisabled,
    Color? textButtonInitial,
    Color? textButtonPressed,
    Color? textButtonDisabled,
    Color? textButtonAccentInitial,
    Color? textButtonAccentPressed,
    Color? textButtonAccentDisabled,
  }) {
    return AppPalette(
      bgPrimary: bgPrimary ?? this.bgPrimary,
      bgSecondary: bgSecondary ?? this.bgSecondary,
      bgTertiary: bgTertiary ?? this.bgTertiary,
      bgOverlay: bgOverlay ?? this.bgOverlay,
      borderDefault: borderDefault ?? this.borderDefault,
      borderAccent: borderAccent ?? this.borderAccent,
      borderDisabled: borderDisabled ?? this.borderDisabled,
      borderPositive: borderPositive ?? this.borderPositive,
      borderNegative: borderNegative ?? this.borderNegative,
      borderUnderline: borderUnderline ?? this.borderUnderline,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textContrast: textContrast ?? this.textContrast,
      textOnColor: textOnColor ?? this.textOnColor,
      textAccent: textAccent ?? this.textAccent,
      textPositive: textPositive ?? this.textPositive,
      textNegative: textNegative ?? this.textNegative,
      textDisabled: textDisabled ?? this.textDisabled,
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconSecondary: iconSecondary ?? this.iconSecondary,
      iconTertiary: iconTertiary ?? this.iconTertiary,
      iconContrast: iconContrast ?? this.iconContrast,
      iconOnColour: iconOnColour ?? this.iconOnColour,
      iconAccent: iconAccent ?? this.iconAccent,
      iconPositive: iconPositive ?? this.iconPositive,
      iconNegative: iconNegative ?? this.iconNegative,
      iconDisabled: iconDisabled ?? this.iconDisabled,
      iconInitial: iconInitial ?? this.iconInitial,
      primaryInitial: primaryInitial ?? this.primaryInitial,
      primaryLoading: primaryLoading ?? this.primaryLoading,
      primaryPressed: primaryPressed ?? this.primaryPressed,
      primaryDisabled: primaryDisabled ?? this.primaryDisabled,
      negativeUniversal: negativeUniversal ?? this.negativeUniversal,
      secondaryInitial: secondaryInitial ?? this.secondaryInitial,
      secondaryLoading: secondaryLoading ?? this.secondaryLoading,
      secondaryPressed: secondaryPressed ?? this.secondaryPressed,
      secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,
      textButtonInitial: textButtonInitial ?? this.textButtonInitial,
      textButtonPressed: textButtonPressed ?? this.textButtonPressed,
      textButtonDisabled: textButtonDisabled ?? this.textButtonDisabled,
      textButtonAccentInitial: textButtonAccentInitial ?? this.textButtonAccentInitial,
      textButtonAccentPressed: textButtonAccentPressed ?? this.textButtonAccentPressed,
      textButtonAccentDisabled: textButtonAccentDisabled ?? this.textButtonAccentDisabled,
    );
  }

  @override
  ThemeExtension<AppPalette> lerp(covariant ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) {
      return this;
    }
    return AppPalette(
      bgPrimary: Color.lerp(bgPrimary, other.bgPrimary, t)!,
      bgSecondary: Color.lerp(bgSecondary, other.bgSecondary, t)!,
      bgTertiary: Color.lerp(bgTertiary, other.bgTertiary, t)!,
      bgOverlay: Color.lerp(bgOverlay, other.bgOverlay, t)!,
      borderDefault: Color.lerp(borderDefault, other.borderDefault, t)!,
      borderAccent: Color.lerp(borderAccent, other.borderAccent, t)!,
      borderDisabled: Color.lerp(borderDisabled, other.borderDisabled, t)!,
      borderPositive: Color.lerp(borderPositive, other.borderPositive, t)!,
      borderNegative: Color.lerp(borderNegative, other.borderNegative, t)!,
      borderUnderline: Color.lerp(borderUnderline, other.borderUnderline, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      textContrast: Color.lerp(textContrast, other.textContrast, t)!,
      textOnColor: Color.lerp(textOnColor, other.textOnColor, t)!,
      textAccent: Color.lerp(textAccent, other.textAccent, t)!,
      textPositive: Color.lerp(textPositive, other.textPositive, t)!,
      textNegative: Color.lerp(textNegative, other.textNegative, t)!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      iconTertiary: Color.lerp(iconTertiary, other.iconTertiary, t)!,
      iconContrast: Color.lerp(iconContrast, other.iconContrast, t)!,
      iconOnColour: Color.lerp(iconOnColour, other.iconOnColour, t)!,
      iconAccent: Color.lerp(iconAccent, other.iconAccent, t)!,
      iconPositive: Color.lerp(iconPositive, other.iconPositive, t)!,
      iconNegative: Color.lerp(iconNegative, other.iconNegative, t)!,
      iconDisabled: Color.lerp(iconDisabled, other.iconDisabled, t)!,
      iconInitial: Color.lerp(iconInitial, other.iconInitial, t)!,
      primaryInitial: Color.lerp(primaryInitial, other.primaryInitial, t)!,
      primaryLoading: Color.lerp(primaryLoading, other.primaryLoading, t)!,
      primaryPressed: Color.lerp(primaryPressed, other.primaryPressed, t)!,
      primaryDisabled: Color.lerp(primaryDisabled, other.primaryDisabled, t)!,
      negativeUniversal: Color.lerp(negativeUniversal, other.negativeUniversal, t)!,
      secondaryInitial: Color.lerp(secondaryInitial, other.secondaryInitial, t)!,
      secondaryLoading: Color.lerp(secondaryLoading, other.secondaryLoading, t)!,
      secondaryPressed: Color.lerp(secondaryPressed, other.secondaryPressed, t)!,
      secondaryDisabled: Color.lerp(secondaryDisabled, other.secondaryDisabled, t)!,
      textButtonInitial: Color.lerp(textButtonInitial, other.textButtonInitial, t)!,
      textButtonPressed: Color.lerp(textButtonPressed, other.textButtonPressed, t)!,
      textButtonDisabled: Color.lerp(textButtonDisabled, other.textButtonDisabled, t)!,
      textButtonAccentInitial: Color.lerp(textButtonAccentInitial, other.textButtonAccentInitial, t)!,
      textButtonAccentPressed: Color.lerp(textButtonAccentPressed, other.textButtonAccentPressed, t)!,
      textButtonAccentDisabled: Color.lerp(textButtonAccentDisabled, other.textButtonAccentDisabled, t)!,
    );
  }
}
