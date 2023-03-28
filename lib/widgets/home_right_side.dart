import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../theme_manager/asset_manager.dart';

class HomeRightSide extends StatelessWidget {
  const HomeRightSide({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getValueForScreenType(
        context: context,
        mobile: 500.h,
        tablet: 700.h,
        desktop: 800.h,
      ),
      child: Image.asset(
        AssetManager.photo,
        fit: BoxFit.contain,
      ),
    );
  }
}
