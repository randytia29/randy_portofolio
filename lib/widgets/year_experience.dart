import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';

class YearExperience extends StatelessWidget {
  const YearExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '3',
          style: TextStyle(
            fontSize: 52.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        8.w.spaceX,
        Text(
          'year\nexperiences'.toUpperCase(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
