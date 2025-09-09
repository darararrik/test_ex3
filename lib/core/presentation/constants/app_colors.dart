import 'dart:ui';

import 'package:test_3/core/presentation/theme/theme_x/app_palette.dart';

abstract class C {
  static final Color gray800 = const Color(0xFF131313);
  static final Color gray700 = const Color(0xFF1B1B1B);
  static final Color gray600 = const Color(0xFF303030);
  static final Color gray600_80 = const Color(0xFF303030).withValues(alpha: 0.8);
  static final Color gray500 = const Color(0xFF696969);
  static final Color gray400 = const Color(0xFF9B9B9B);
  static final Color gray300 = const Color(0xFFCFCFCF);
  static final Color gray200 = const Color(0xFFDEDEDE);
  static final Color gray100 = const Color(0xFFF4F5F4);
  static final Color gray0 = const Color(0xFFFFFFFF);
  static final Color lime500 = const Color(0xFF618909);
  static final Color lime250 = const Color(0xFF87B71F);
  static final Color lime100 = const Color(0xFFB8DE64);
  static final Color green500 = const Color(0xFF75C537);
  static final Color red500 = const Color(0xFFC2534C);
}

final AppPalette lightColors = AppPalette(
  bgPrimary: C.gray0,
  bgSecondary: C.gray100,
  bgTertiary: C.gray200,
  bgOverlay: C.gray600_80,
  borderDefault: C.lime250,
  borderAccent: C.gray800,
  borderDisabled: C.gray400,
  borderPositive: C.lime250,
  borderNegative: C.red500,
  borderUnderline: C.lime250,
  textPrimary: C.gray800,
  textSecondary: C.gray400,
  textTertiary: C.gray200,
  textContrast: C.gray0,
  textOnColor: C.gray0,
  textAccent: C.lime250,
  textPositive: C.lime250,
  textNegative: C.red500,
  textDisabled: C.gray500,
  iconPrimary: C.gray800,
  iconSecondary: C.gray400,
  iconTertiary: C.gray200,
  iconContrast: C.gray0,
  iconOnColour: C.gray0,
  iconAccent: C.lime250,
  iconPositive: C.lime250,
  iconNegative: C.red500,
  iconDisabled: C.gray500,
  iconInitial: C.gray300,
  primaryInitial: C.lime250,
  primaryLoading: C.lime250,
  primaryPressed: C.lime500,
  primaryDisabled: C.gray200,
  negativeUniversal: C.red500,
  secondaryInitial: C.gray0,
  secondaryLoading: C.gray0,
  secondaryPressed: C.lime250,
  secondaryDisabled: C.gray200,
  textButtonInitial: C.gray800,
  textButtonPressed: C.lime500,
  textButtonDisabled: C.gray200,
  textButtonAccentInitial: C.lime250,
  textButtonAccentPressed: C.lime500,
  textButtonAccentDisabled: C.gray200,
);
final AppPalette darkPallete = AppPalette(
  bgPrimary: C.gray800,
  bgSecondary: C.gray700,
  bgTertiary: C.gray600,
  bgOverlay: C.gray600_80,
  borderDefault: C.gray500,
  borderAccent: C.gray0,
  borderDisabled: C.gray600,
  borderPositive: C.lime250,
  borderNegative: C.red500,
  borderUnderline: C.lime100,
  textPrimary: C.gray0,
  textSecondary: C.gray400,
  textTertiary: C.gray500,
  textContrast: C.gray800,
  textOnColor: C.gray0,
  textAccent: C.lime100,
  textPositive: C.lime100,
  textNegative: C.red500,
  textDisabled: C.gray500,
  iconPrimary: C.gray0,
  iconSecondary: C.gray200,
  iconTertiary: C.gray500,
  iconContrast: C.gray800,
  iconOnColour: C.gray0,
  iconAccent: C.lime100,
  iconPositive: C.lime100,
  iconNegative: C.red500,
  iconDisabled: C.gray500,
  iconInitial: C.gray600,
  primaryInitial: C.gray600,
  primaryLoading: C.gray600,
  primaryPressed: C.lime100,
  primaryDisabled: C.gray600,
  negativeUniversal: C.red500,
  secondaryInitial: C.gray800,
  secondaryLoading: C.gray800,
  secondaryPressed: C.lime100,
  secondaryDisabled: C.gray800,
  textButtonInitial: C.gray0,
  textButtonPressed: C.lime100,
  textButtonDisabled: C.gray500,
  textButtonAccentInitial: C.lime100,
  textButtonAccentPressed: C.green500,
  textButtonAccentDisabled: C.gray500,
);
