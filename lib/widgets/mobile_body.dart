import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';

import 'greetings.dart';
import 'photo_me.dart';
import 'short_desc.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Greetings(),
          const ShortDesc(),
          32.h.spaceY,
          PhotoMe(
            heightPhoto: 450.h,
          ),
        ],
      ),
    );
  }
}
