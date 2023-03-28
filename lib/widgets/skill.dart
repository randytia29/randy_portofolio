import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'skill_detail.dart';

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skill',
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 35.sp,
              tablet: 45.sp,
              desktop: 55.sp,
            ),
            fontWeight: FontWeight.w500,
            color: Colors.grey[400],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        const SkillDetail(title: 'Flutter'),
        SizedBox(
          height: 10.h,
        ),
        const SkillDetail(title: 'BLoC'),
        SizedBox(
          height: 10.h,
        ),
        const SkillDetail(title: 'Firebase'),
      ],
    );
  }
}
