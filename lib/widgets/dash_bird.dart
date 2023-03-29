import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme_manager/asset_manager.dart';

class DashBird extends StatelessWidget {
  const DashBird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.h,
      height: 75.h,
      child: Image.asset(
        AssetManager.dashatar,
        fit: BoxFit.cover,
      ),
    );
  }
}
