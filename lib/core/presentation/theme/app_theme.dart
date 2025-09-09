import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/constants.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    extensions: [lightColors, textStyle],
    primaryColor: lightColors.primaryInitial,
    scaffoldBackgroundColor: lightColors.bgPrimary,
    appBarTheme: AppBarTheme(
      backgroundColor: lightColors.bgPrimary,
      titleTextStyle: textStyle.title2,
    ),
    tabBarTheme: TabBarThemeData(
      indicatorSize: TabBarIndicatorSize.tab,
      dividerHeight: 0,
      dividerColor: Colors.transparent,
      labelColor: lightColors.textOnColor,
      unselectedLabelColor: lightColors.textPrimary,
      indicator: BoxDecoration(
        color: lightColors.primaryInitial,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 0, color: Colors.transparent),
      ),
      labelStyle: textStyle.body4,
      unselectedLabelStyle: textStyle.body4,
    ),
    drawerTheme: DrawerThemeData(backgroundColor: lightColors.bgPrimary),

    // dividerTheme: DividerThemeData(color: appColors.gray500, thickness: 1),

    //   dialogTheme: DialogThemeData(backgroundColor: appColors.gray100),
    //   snackBarTheme: SnackBarThemeData(
    //     behavior: SnackBarBehavior.floating,
    //     backgroundColor: appColors.gray200,
    //     shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(R.r30)),
    //     actionTextColor: appColors.orangeIndicator,
    //   ),
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(borderSide: BorderSide(color: C.gray500, width: 1.5)),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: C.gray500, width: 1.5),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: C.gray700, width: 1.5),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: C.red500, width: 1.5),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: C.gray200, width: 1.5),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: C.red500, width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.disabled)) {
            return lightColors.primaryDisabled;
          }
          if (states.contains(WidgetState.pressed)) {
            return lightColors.primaryPressed; // Цвет при нажатии
          }
          return lightColors.primaryInitial; // Обычный цвет
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
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
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: lightColors.bgPrimary,
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.selected)) {
          return textStyle.caption.copyWith(
            color: lightColors.textAccent,
          ); // выбранный таб
        }
        return textStyle.caption.copyWith(color: lightColors.textPrimary); // обычный
      }),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
  );
}
