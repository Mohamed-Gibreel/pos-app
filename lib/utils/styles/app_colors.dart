import 'package:base_template/utils/styles/app_colors_extension.dart';
import 'package:base_template/utils/styles/app_text_extenstion.dart';
import 'package:base_template/utils/styles/convert_hex.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final String plusJakartaSans =
    GoogleFonts.plusJakartaSans().fontFamily ?? 'Roboto';

class AppColors {
  static final textTheme = AppTextThemeExtension(
    heading1: TextStyle(
      fontSize: 64,
      height: 76,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    heading2: TextStyle(
      fontSize: 46,
      height: 54,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    heading3: TextStyle(
      fontSize: 36,
      height: 44,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    heading4: TextStyle(
      fontSize: 24,
      height: 30,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    bodyXL: TextStyle(
      fontSize: 20,
      height: 28,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    bodyL: TextStyle(
      fontSize: 18,
      height: 24,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    bodyM: TextStyle(
      fontSize: 16,
      height: 22,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    bodyS: TextStyle(
      fontSize: 14,
      height: 20,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
    bodyXS: TextStyle(
      fontSize: 12,
      height: 16,
      letterSpacing: -2,
      fontFamily: plusJakartaSans,
    ),
  );

  static final ThemeData light = ThemeData.light().copyWith(
    // textTheme: ThemeData.light().textTheme.copyWith(
    //   bodyMedium: textTheme.textMedium.copyWith(
    //     color: lightContentColors.primary,
    //   ),
    // ),
    scaffoldBackgroundColor: convertHexToColorObject('FFFFFF'),
    extensions: [
      lightAppColors,
    ],
  );

  static final lightAppColors = AppColorsExtension(
    // Primary
    primary50: convertHexToColorObject('F2FAF7'),
    primary100: convertHexToColorObject('DAF4E6'),
    primary200: convertHexToColorObject('BEEDD2'),
    primary300: convertHexToColorObject('99E4B8'),
    primary400: convertHexToColorObject('6AD896'),
    primary500: convertHexToColorObject('34CB6F'),
    primary600: convertHexToColorObject('2EB362'),
    primary700: convertHexToColorObject('289E56'),
    primary800: convertHexToColorObject('218347'),
    primary900: convertHexToColorObject('1A6637'),
    // Neutral
    neutral50: convertHexToColorObject('FAFAFA'),
    neutral100: convertHexToColorObject('F7F7F7'),
    neutral200: convertHexToColorObject('E5E5E5'),
    neutral300: convertHexToColorObject('D7D7D7'),
    neutral400: convertHexToColorObject('A3A3A3'),
    neutral500: convertHexToColorObject('757575'),
    neutral600: convertHexToColorObject('525252'),
    neutral700: convertHexToColorObject('464646'),
    neutral800: convertHexToColorObject('282828'),
    neutral900: convertHexToColorObject('141414'),
    // Gradients
    primaryGradientFrom: convertHexToColorObject('35C56E'),
    primaryGradientTo: convertHexToColorObject('89898B'),
    neutralGradientFrom: convertHexToColorObject('1D90FB'),
    neutralGradientTo: convertHexToColorObject('FFAB00'),
    infoGradientFrom: convertHexToColorObject('F04D28'),
    infoGradientTo: convertHexToColorObject('2E9055'),
    warningGradientFrom: convertHexToColorObject('202020'),
    warningGradientTo: convertHexToColorObject('0E5EA9'),
    errorGradientFrom: convertHexToColorObject('C6880C'),
    errorGradientTo: convertHexToColorObject('AA371C'),
    // Error
    error100: convertHexToColorObject('FEEDEA'),
    error200: convertHexToColorObject('FAC8BC'),
    error300: convertHexToColorObject('F5886F'),
    error400: convertHexToColorObject('F37153'),
    error500: convertHexToColorObject('F04D28'),
    // Warning
    warning100: convertHexToColorObject('FFE5B0'),
    warning200: convertHexToColorObject('FFE5B0'),
    warning300: convertHexToColorObject('FFC754'),
    warning400: convertHexToColorObject('FFBC33'),
    warning500: convertHexToColorObject('FFAB00'),
    // Info
    info100: convertHexToColorObject('E8F4FF'),
    info200: convertHexToColorObject('b9ddfe'),
    info300: convertHexToColorObject('68b5fc'),
    info400: convertHexToColorObject('4aa6fc'),
    info500: convertHexToColorObject('1d90fb'),
  );
}
