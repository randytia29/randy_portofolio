import 'dart:ui';

class ColorManager {
  static Color primary = HexColor.fromHex('#26A69A');
  static Color secondary = HexColor.fromHex('#1CD9FF');
  static Color hover = HexColor.fromHex('#01579B');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }

    return Color(int.parse(hexColorString, radix: 16));
  }
}
