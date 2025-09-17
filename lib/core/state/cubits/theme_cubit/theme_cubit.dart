import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:test_3/core/presentation/theme/app_theme.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(AppTheme.lightTheme));
  void initWithSystemTheme(MediaQueryData data) {
    final brightness = data.platformBrightness;
    if (brightness == Brightness.dark) {
      emit(ThemeState(AppTheme.darkTheme));
    } else {
      emit(ThemeState(AppTheme.lightTheme));
    }
  }

  void toggleTheme() {
    final isLight = state.theme == AppTheme.lightTheme;
    emit(ThemeState(isLight ? AppTheme.darkTheme : AppTheme.lightTheme));
  }
}
