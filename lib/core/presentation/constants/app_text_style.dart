import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/app_colors.dart';
import 'package:test_3/core/presentation/theme/theme_x/app_typography.dart';

abstract class FF {
  static const nokwy = "Nokwy";
  static const outfit = "Outfit";
}

final AppTypography textStyle = AppTypography(
  title1: TextStyle(
    fontFamily: FF.nokwy,
    fontWeight: FontWeight.w400,
    fontSize: 55,
    color: lightColors.textPrimary,
  ),
  title2: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w500,
    fontSize: 32,
    color: lightColors.textPrimary,
  ),
  title3: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w600,
    fontSize: 32,
    color: lightColors.textPrimary,
  ),
  title4: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: lightColors.textPrimary,
  ),
  headline1: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: lightColors.textPrimary,
  ),
  headline2: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: lightColors.textPrimary,
  ),
  body1: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: lightColors.textPrimary,
  ),
  body2: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: lightColors.textPrimary,
  ),
  body3: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: lightColors.textPrimary,
  ),
  body4: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: lightColors.textPrimary,
  ),
  body5: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: lightColors.textPrimary,
  ),
  body6: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: lightColors.textPrimary,
  ),
  caption: TextStyle(
    fontFamily: FF.outfit,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.38,
    color: lightColors.textPrimary,
  ),
);
