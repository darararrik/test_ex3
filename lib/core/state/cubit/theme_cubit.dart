import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/utils/utils.dart';

part 'theme_state.dart';

/// Кубит для смены темы
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(AppTheme.lightTheme));

  /// Переключение светлая ↔ тёмная
  void toggleTheme() {
    final isLight = state.theme == AppTheme.lightTheme;
    emit(ThemeState(isLight ? AppTheme.darkTheme : AppTheme.lightTheme));
  }

  /// Установить конкретную тему
  void setTheme(ThemeData theme) {
    emit(ThemeState(theme));
  }
}
