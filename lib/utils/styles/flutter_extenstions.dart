import 'package:base_template/utils/styles/app_colors.dart';
import 'package:base_template/utils/styles/app_colors_extension.dart';
import 'package:flutter/material.dart';

extension AppThemeExtension on ThemeData {
  AppColorsExtension get colors =>
      extension<AppColorsExtension>() ?? AppColors.lightAppColors;
}

extension ThemeGetter on BuildContext {
  AppColorsExtension get appColor => Theme.of(this).colors;
  // Usage example: `context.theme`
  ThemeData get theme => Theme.of(this);
}
