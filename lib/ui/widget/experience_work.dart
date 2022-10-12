import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'experience_detail.dart';

class ExperienceWork extends StatelessWidget {
  const ExperienceWork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Experience Work',
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
        ExperienceDetail(
          title: 'Kelurahan Kalipancur - IT Staff',
          subtitle: 'January 2018 – December 2019',
        ),
        SizedBox(
          height: 20.h,
        ),
        ExperienceDetail(
          title: 'Ella Skin Care - Flutter Developer',
          subtitle: 'July 2020 – April 2021',
        ),
        SizedBox(
          height: 20.h,
        ),
        ExperienceDetail(
          title: 'Imperial Healthtech - Flutter Developer',
          subtitle: 'April 2021 – August 2021',
        ),
      ],
    );
  }
}
