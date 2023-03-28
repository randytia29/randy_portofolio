import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme_manager/asset_manager.dart';

class PhotoMe extends StatelessWidget {
  const PhotoMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450.h,
      width: double.maxFinite,
      child: Image.asset(
        AssetManager.photo,
        fit: BoxFit.contain,
      ),
    );
  }
}
