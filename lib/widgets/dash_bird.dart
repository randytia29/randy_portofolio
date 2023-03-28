import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme_manager/asset_manager.dart';

class DashBird extends StatelessWidget {
  const DashBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.h,
      height: 70.h,
      margin: EdgeInsets.only(top: 24.h),
      child: Image.asset(
        AssetManager.dashatar,
        fit: BoxFit.cover,
      ),
    );
  }
}
