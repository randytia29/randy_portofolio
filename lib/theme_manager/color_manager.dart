import 'dart:ui';

import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex('#26A69A');
  static Color secondary = HexColor.fromHex('#1CD9FF');
  static Color hover = HexColor.fromHex('#01579B');
  static Color grey = HexColor.fromHex('#F5F4EF');
  static Color black = HexColor.fromHex('#000000');
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
