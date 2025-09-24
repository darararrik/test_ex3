import 'package:flutter/material.dart';

import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/app_palette.dart';
import 'package:test_3/core/extensions/app_typography.dart';
import 'package:test_3/core/utils/utils.dart';

class AppTheme {
  // Примеры готовых тем
  static ThemeData lightTheme = buildTheme(
    colors: lightColors,
    textStyle: lightTextStyle,
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = buildTheme(
    colors: darkColors,
    textStyle: darkTextStyle,
    brightness: Brightness.dark,
  );

  static ThemeData buildTheme({
    required AppPalette colors,
    required AppTypography textStyle,
    required Brightness brightness,
  }) {
    return ThemeData(
      brightness: brightness,
      useMaterial3: true,
      extensions: [colors, textStyle],
      primaryColor: colors.primaryInitial,
      scaffoldBackgroundColor: colors.bgPrimary,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.bgPrimary,
        titleTextStyle: textStyle.title2,
      ),
      dividerTheme: DividerThemeData(color: colors.primaryDisabled, thickness: S.s0_5),
      tabBarTheme: TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.tab,
        dividerHeight: 0,
        dividerColor: Colors.transparent,
        labelColor: brightness == Brightness.light
            ? colors.textOnColor
            : colors.textContrast,
        unselectedLabelColor: brightness == Brightness.light
            ? colors.textPrimary
            : colors.textOnColor,
        indicator: BoxDecoration(
          color: brightness == Brightness.light
              ? colors.primaryInitial
              : colors.primaryPressed,
          borderRadius: BorderRadius.circular(S.s16),
          border: Border.all(width: 0, color: Colors.transparent),
        ),
        labelStyle: textStyle.body4,
        unselectedLabelStyle: textStyle.body4,
      ),
      drawerTheme: DrawerThemeData(backgroundColor: colors.bgPrimary),
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.borderDisabled, width: 1.5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.borderDisabled, width: 1.5),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.borderAccent, width: 1.5),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.borderNegative, width: 1.5),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.borderDisabled, width: 1.5),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors.borderNegative, width: 1.5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.disabled)) {
              return colors.primaryDisabled;
            }
            if (states.contains(WidgetState.pressed)) {
              return colors.primaryPressed; // Цвет при нажатии
            }
            return colors.primaryInitial; // Обычный цвет
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((
            Set<WidgetState> states,
          ) {
            if (states.contains(WidgetState.disabled)) {
              return colors.textDisabled;
            }
            if (states.contains(WidgetState.pressed)) {
              return colors.textContrast;
            }
            return brightness == Brightness.light
                ? colors.textContrast
                : colors.textAccent;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(S.s21)),
          ),
          minimumSize: WidgetStateProperty.all(const Size.fromHeight(S.s54)),
          elevation: WidgetStateProperty.all(0),
          textStyle: WidgetStateProperty.all(textStyle.body2),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(const P(horizontal: S.s4)),
          textStyle: WidgetStateProperty.all(textStyle.body2),
          foregroundColor: WidgetStateProperty.all(colors.textAccent),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
        iconSize: S.s24,
        backgroundColor: brightness == Brightness.light
            ? colors.primaryInitial
            : colors.secondaryPressed,
        foregroundColor: colors.iconContrast,
        hoverColor: colors.primaryPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(S.s32)),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colors.bgPrimary,
        indicatorColor: Colors.transparent,
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
          if (states.contains(WidgetState.selected)) {
            return textStyle.caption.copyWith(color: colors.textAccent); // выбранный таб
          }
          return textStyle.caption.copyWith(color: colors.textPrimary); // обычный
        }),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
      // buttonTheme: ButtonThemeData(c)
    );
  }
}
