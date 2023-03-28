import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
    dividerTheme: DividerThemeData(color: ColorManager.grey, space: 24.h),
    useMaterial3: true,
  );
}
