import 'package:flutter/material.dart';

import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/l10n/app_localizations.dart';

extension BuildContextX on BuildContext {
  AppPalette get color => Theme.of(this).extension<AppPalette>()!;
  AppTypography get text => Theme.of(this).extension<AppTypography>()!;
  void get openDrawer => Scaffold.of(this).openDrawer();
  ThemeData get theme => Theme.of(this);
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
