import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    extensions: [lightColors, textStyle],
    primaryColor: lightColors.primaryInitial,
    scaffoldBackgroundColor: lightColors.bgPrimary,
    //   dialogTheme: DialogThemeData(backgroundColor: appColors.gray100),
    //   snackBarTheme: SnackBarThemeData(
    //     behavior: SnackBarBehavior.floating,
    //     backgroundColor: appColors.gray200,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(R.r30)),
    //     actionTextColor: appColors.orangeIndicator,
    //   ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(borderSide: BorderSide(color: C.gray500, width: 1.5)),
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: C.gray500, width: 1.5)),
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: C.gray700, width: 1.5)),
      errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: C.red500, width: 1.5)),
      disabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: C.gray200, width: 1.5)),
      focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: C.red500, width: 1.5)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return lightColors.primaryDisabled;
          }
          if (states.contains(WidgetState.pressed)) {
            return lightColors.primaryPressed; // Цвет при нажатии
          }
          return lightColors.primaryInitial; // Обычный цвет
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return lightColors.textDisabled;
          }
          return lightColors.textContrast;
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(R.r21)),
        ),
        minimumSize: WidgetStateProperty.all(const Size.fromHeight(Sz.s54)),
        elevation: WidgetStateProperty.all(0),
        textStyle: WidgetStateProperty.all(textStyle.body2),
      ),
    ),

    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    //   elevation: 0,
    //   iconSize: S.s24,
    //   backgroundColor: lp.gray800,
    //   foregroundColor: appColors.gray100,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(R.r95)),
    // ),
    // dividerTheme: DividerThemeData(color: appColors.gray500, thickness: 1),
    // appBarTheme: AppBarTheme(
    //   backgroundColor: appColors.background,
    //   titleTextStyle: appTextStyle.headline1,
    // ),
    // navigationBarTheme: NavigationBarThemeData(
    //   backgroundColor: appColors.gray100,
    //   indicatorColor: Colors.transparent,
    //   labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
    //   overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    // ),
  );
}
