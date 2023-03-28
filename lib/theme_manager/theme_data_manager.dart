import 'package:flutter/material.dart';

import 'color_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme:
        AppBarTheme(backgroundColor: ColorManager.primary, elevation: 0),
  );
}
