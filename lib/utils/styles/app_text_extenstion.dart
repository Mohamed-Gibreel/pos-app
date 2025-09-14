import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  const AppTextThemeExtension({
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.heading4,
    required this.bodyXL,
    required this.bodyL,
    required this.bodyM,
    required this.bodyS,
    required this.bodyXS,
  });

  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle bodyXL;
  final TextStyle bodyL;
  final TextStyle bodyM;
  final TextStyle bodyS;
  final TextStyle bodyXS;

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? heading3,
    TextStyle? heading4,
    TextStyle? bodyXL,
    TextStyle? bodyL,
    TextStyle? bodyM,
    TextStyle? bodyS,
    TextStyle? bodyXS,
  }) {
    return AppTextThemeExtension(
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      heading3: heading3 ?? this.heading3,
      heading4: heading4 ?? this.heading4,
      bodyXL: bodyXL ?? this.bodyXL,
      bodyL: bodyL ?? this.bodyL,
      bodyM: bodyM ?? this.bodyM,
      bodyS: bodyS ?? this.bodyS,
      bodyXS: bodyXS ?? this.bodyXS,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
    covariant ThemeExtension<AppTextThemeExtension>? other,
    double t,
  ) {
    if (other is! AppTextThemeExtension) {
      return this;
    }

    return AppTextThemeExtension(
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      heading3: TextStyle.lerp(heading3, other.heading3, t)!,
      heading4: TextStyle.lerp(heading3, other.heading4, t)!,
      bodyXL: TextStyle.lerp(bodyXL, other.bodyXL, t)!,
      bodyL: TextStyle.lerp(bodyL, other.bodyL, t)!,
      bodyM: TextStyle.lerp(bodyM, other.bodyM, t)!,
      bodyS: TextStyle.lerp(bodyS, other.bodyS, t)!,
      bodyXS: TextStyle.lerp(bodyXS, other.bodyXS, t)!,
    );
  }
}
