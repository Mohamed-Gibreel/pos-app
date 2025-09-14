import 'dart:ui';

Color convertHexToColorObject(String hex) {
  // Remove "#" if it exists
  final parsedHex = hex.replaceAll('#', '');

  // Parse the hex string and add full opacity (FF)
  return Color(int.parse('FF$parsedHex', radix: 16));
}
