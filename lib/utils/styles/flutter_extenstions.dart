import 'package:base_template/utils/styles/app_colors.dart';
import 'package:base_template/utils/styles/app_colors_extension.dart';
import 'package:base_template/utils/styles/app_text_extenstion.dart';
import 'package:flutter/material.dart';

extension AppThemeExtension on ThemeData {
  AppColorsExtension get colors =>
      extension<AppColorsExtension>() ?? AppColors.lightAppColors;

  AppTextThemeExtension get textStyle =>
      extension<AppTextThemeExtension>() ?? AppColors.textTheme;
}

extension ThemeGetter on BuildContext {
  AppColorsExtension get appColor => Theme.of(this).colors;
  AppTextThemeExtension get textStyle => Theme.of(this).textStyle;
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
