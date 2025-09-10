import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  AppTypography({
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.headline1,
    required this.headline2,
    required this.body1,
    required this.body2,
    required this.body3,
    required this.body4,
    required this.body5,
    required this.body6,
    required this.caption,
  });
  final TextStyle title1;
  final TextStyle title2;
  final TextStyle title3;
  final TextStyle title4;
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
  final TextStyle body4;
  final TextStyle body5;
  final TextStyle body6;
  final TextStyle caption;

  @override
  AppTypography copyWith({
    TextStyle? title1,
    TextStyle? title2,
    TextStyle? title3,
    TextStyle? title4,
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
    TextStyle? body4,
    TextStyle? body5,
    TextStyle? body6,
    TextStyle? caption,
  }) {
    return AppTypography(
      title1: title1 ?? this.title1,
      title2: title2 ?? this.title2,
      title3: title3 ?? this.title3,
      title4: title4 ?? this.title4,
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
      body4: body4 ?? this.body4,
      body5: body5 ?? this.body5,
      body6: body6 ?? this.body6,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    covariant ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      title1: TextStyle.lerp(title1, other.title1, t)!,
      title2: TextStyle.lerp(title2, other.title2, t)!,
      title3: TextStyle.lerp(title3, other.title3, t)!,
      title4: TextStyle.lerp(title4, other.title4, t)!,
      headline1: TextStyle.lerp(headline1, other.headline1, t)!,
      headline2: TextStyle.lerp(headline2, other.headline2, t)!,
      body1: TextStyle.lerp(body1, other.body1, t)!,
      body2: TextStyle.lerp(body2, other.body2, t)!,
      body3: TextStyle.lerp(body3, other.body3, t)!,
      body4: TextStyle.lerp(body4, other.body4, t)!,
      body5: TextStyle.lerp(body5, other.body5, t)!,
      body6: TextStyle.lerp(body6, other.body6, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
    );
  }
}
