import 'package:flutter/material.dart';

/// `ThemeExtension` template for custom colors.
///
/// For example purposes, it has all required fields from the default Material `ColorScheme`.
/// But you can add, rename and delete any fields your need.
///
/// ### Motivation
///
/// At the beginning, you may not know if your colors will fit into the Material `ColorScheme`,
/// but you still decided to start using `ColorScheme`, and only then realize that you need additional fields.
/// You will create `ThemeExtension` for only the additional fields, and as the result, you will have your colors
/// scattered between the `ColorScheme` and `ThemeExtension` with a few extra colors.
///
/// With this template, you can collect all fields in one place,
/// and don't worry about future changes to the Material or your design.
///
/// Or you can just quickly copy-paste this file and rename fields to your needs.

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    // Primary
    required this.primary50,
    required this.primary100,
    required this.primary200,
    required this.primary300,
    required this.primary400,
    required this.primary500,
    required this.primary600,
    required this.primary700,
    required this.primary800,
    required this.primary900,
    // Neutral
    required this.neutral50,
    required this.neutral100,
    required this.neutral200,
    required this.neutral300,
    required this.neutral400,
    required this.neutral500,
    required this.neutral600,
    required this.neutral700,
    required this.neutral800,
    required this.neutral900,
    // Gradient
    required this.primaryGradientFrom,
    required this.primaryGradientTo,
    required this.neutralGradientFrom,
    required this.neutralGradientTo,
    required this.infoGradientFrom,
    required this.infoGradientTo,
    required this.warningGradientFrom,
    required this.warningGradientTo,
    required this.errorGradientFrom,
    required this.errorGradientTo,
    // Error
    required this.error100,
    required this.error200,
    required this.error300,
    required this.error400,
    required this.error500,
    // Warning
    required this.warning100,
    required this.warning200,
    required this.warning300,
    required this.warning400,
    required this.warning500,
    // Info
    required this.info100,
    required this.info200,
    required this.info300,
    required this.info400,
    required this.info500,
  });

  final Color primary50;
  final Color primary100;
  final Color primary200;
  final Color primary300;
  final Color primary400;
  final Color primary500;
  final Color primary600;
  final Color primary700;
  final Color primary800;
  final Color primary900;

  final Color neutral50;
  final Color neutral100;
  final Color neutral200;
  final Color neutral300;
  final Color neutral400;
  final Color neutral500;
  final Color neutral600;
  final Color neutral700;
  final Color neutral800;
  final Color neutral900;

  final Color primaryGradientFrom;
  final Color primaryGradientTo;
  final Color neutralGradientFrom;
  final Color neutralGradientTo;
  final Color infoGradientFrom;
  final Color infoGradientTo;
  final Color warningGradientFrom;
  final Color warningGradientTo;
  final Color errorGradientFrom;
  final Color errorGradientTo;

  final Color error100;
  final Color error200;
  final Color error300;
  final Color error400;
  final Color error500;

  final Color warning100;
  final Color warning200;
  final Color warning300;
  final Color warning400;
  final Color warning500;

  final Color info100;
  final Color info200;
  final Color info300;
  final Color info400;
  final Color info500;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary50,
    Color? primary100,
    Color? primary200,
    Color? primary300,
    Color? primary400,
    Color? primary500,
    Color? primary600,
    Color? primary700,
    Color? primary800,
    Color? primary900,
    Color? neutral50,
    Color? neutral100,
    Color? neutral200,
    Color? neutral300,
    Color? neutral400,
    Color? neutral500,
    Color? neutral600,
    Color? neutral700,
    Color? neutral800,
    Color? neutral900,
    Color? primaryGradientFrom,
    Color? primaryGradientTo,
    Color? neutralGradientFrom,
    Color? neutralGradientTo,
    Color? infoGradientFrom,
    Color? infoGradientTo,
    Color? warningGradientFrom,
    Color? warningGradientTo,
    Color? errorGradientFrom,
    Color? errorGradientTo,
    Color? error100,
    Color? error200,
    Color? error300,
    Color? error400,
    Color? error500,
    Color? warning100,
    Color? warning200,
    Color? warning300,
    Color? warning400,
    Color? warning500,
    Color? info100,
    Color? info200,
    Color? info300,
    Color? info400,
    Color? info500,
  }) {
    return AppColorsExtension(
      primary50: primary50 ?? this.primary50,
      primary100: primary100 ?? this.primary100,
      primary200: primary200 ?? this.primary200,
      primary300: primary300 ?? this.primary300,
      primary400: primary400 ?? this.primary400,
      primary500: primary500 ?? this.primary500,
      primary600: primary600 ?? this.primary600,
      primary700: primary700 ?? this.primary700,
      primary800: primary800 ?? this.primary800,
      primary900: primary900 ?? this.primary900,

      neutral50: neutral50 ?? this.neutral50,
      neutral100: neutral100 ?? this.neutral100,
      neutral200: neutral200 ?? this.neutral200,
      neutral300: neutral300 ?? this.neutral300,
      neutral400: neutral400 ?? this.neutral400,
      neutral500: neutral500 ?? this.neutral500,
      neutral600: neutral600 ?? this.neutral600,
      neutral700: neutral700 ?? this.neutral700,
      neutral800: neutral800 ?? this.neutral800,
      neutral900: neutral900 ?? this.neutral900,

      primaryGradientFrom: primaryGradientFrom ?? this.primaryGradientFrom,
      primaryGradientTo: primaryGradientTo ?? this.primaryGradientTo,
      neutralGradientFrom: neutralGradientFrom ?? this.neutralGradientFrom,
      neutralGradientTo: neutralGradientTo ?? this.neutralGradientTo,
      infoGradientFrom: infoGradientFrom ?? this.infoGradientFrom,
      infoGradientTo: infoGradientTo ?? this.infoGradientTo,
      warningGradientFrom: warningGradientFrom ?? this.warningGradientFrom,
      warningGradientTo: warningGradientTo ?? this.warningGradientTo,
      errorGradientFrom: errorGradientFrom ?? this.errorGradientFrom,
      errorGradientTo: errorGradientTo ?? this.errorGradientTo,

      error100: error100 ?? this.error100,
      error200: error200 ?? this.error200,
      error300: error300 ?? this.error300,
      error400: error400 ?? this.error400,
      error500: error500 ?? this.error500,

      warning100: warning100 ?? this.warning100,
      warning200: warning200 ?? this.warning200,
      warning300: warning300 ?? this.warning300,
      warning400: warning400 ?? this.warning400,
      warning500: warning500 ?? this.warning500,

      info100: info100 ?? this.info100,
      info200: info200 ?? this.info200,
      info300: info300 ?? this.info300,
      info400: info400 ?? this.info400,
      info500: info500 ?? this.info500,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      primary50: Color.lerp(primary50, other.primary50, t)!,
      primary100: Color.lerp(primary100, other.primary100, t)!,
      primary200: Color.lerp(primary200, other.primary200, t)!,
      primary300: Color.lerp(primary300, other.primary300, t)!,
      primary400: Color.lerp(primary400, other.primary400, t)!,
      primary500: Color.lerp(primary500, other.primary500, t)!,
      primary600: Color.lerp(primary600, other.primary600, t)!,
      primary700: Color.lerp(primary700, other.primary700, t)!,
      primary800: Color.lerp(primary800, other.primary800, t)!,
      primary900: Color.lerp(primary900, other.primary900, t)!,

      neutral50: Color.lerp(neutral50, other.neutral50, t)!,
      neutral100: Color.lerp(neutral100, other.neutral100, t)!,
      neutral200: Color.lerp(neutral200, other.neutral200, t)!,
      neutral300: Color.lerp(neutral300, other.neutral300, t)!,
      neutral400: Color.lerp(neutral400, other.neutral400, t)!,
      neutral500: Color.lerp(neutral500, other.neutral500, t)!,
      neutral600: Color.lerp(neutral600, other.neutral600, t)!,
      neutral700: Color.lerp(neutral700, other.neutral700, t)!,
      neutral800: Color.lerp(neutral800, other.neutral800, t)!,
      neutral900: Color.lerp(neutral900, other.neutral900, t)!,

      primaryGradientFrom: Color.lerp(
        primaryGradientFrom,
        other.primaryGradientFrom,
        t,
      )!,
      primaryGradientTo: Color.lerp(
        primaryGradientTo,
        other.primaryGradientTo,
        t,
      )!,

      neutralGradientFrom: Color.lerp(
        neutralGradientFrom,
        other.neutralGradientFrom,
        t,
      )!,
      neutralGradientTo: Color.lerp(
        neutralGradientTo,
        other.neutralGradientTo,
        t,
      )!,
      infoGradientFrom: Color.lerp(
        infoGradientFrom,
        other.infoGradientFrom,
        t,
      )!,
      infoGradientTo: Color.lerp(infoGradientTo, other.infoGradientTo, t)!,
      warningGradientFrom: Color.lerp(
        warningGradientFrom,
        other.warningGradientFrom,
        t,
      )!,
      warningGradientTo: Color.lerp(
        warningGradientTo,
        other.warningGradientTo,
        t,
      )!,
      errorGradientFrom: Color.lerp(
        errorGradientFrom,
        other.errorGradientFrom,
        t,
      )!,
      errorGradientTo: Color.lerp(errorGradientTo, other.errorGradientTo, t)!,

      error100: Color.lerp(error100, other.error100, t)!,
      error200: Color.lerp(error200, other.error200, t)!,
      error300: Color.lerp(error300, other.error300, t)!,
      error400: Color.lerp(error400, other.error400, t)!,
      error500: Color.lerp(error500, other.error500, t)!,
      warning100: Color.lerp(warning100, other.warning100, t)!,

      warning200: Color.lerp(warning200, other.warning200, t)!,
      warning300: Color.lerp(warning300, other.warning300, t)!,
      warning400: Color.lerp(warning400, other.warning400, t)!,
      warning500: Color.lerp(warning500, other.warning500, t)!,

      info100: Color.lerp(info100, other.info100, t)!,
      info200: Color.lerp(info200, other.info200, t)!,
      info300: Color.lerp(info300, other.info300, t)!,
      info400: Color.lerp(info400, other.info400, t)!,
      info500: Color.lerp(info500, other.info500, t)!,
    );
  }
}
