import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/image_assets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeRightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getValueForScreenType(
        context: context,
        mobile: 500.h,
        tablet: 700.h,
        desktop: 800.h,
      ),
      child: Image.asset(
        ImageAssets.photo,
        fit: BoxFit.contain,
      ),
    );
  }
}
