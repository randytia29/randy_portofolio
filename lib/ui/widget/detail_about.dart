import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DetailAbout extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const DetailAbout(
      {super.key, required this.title, required this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
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
        GestureDetector(
          onTap: onTap,
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: getValueForScreenType(
                context: context,
                mobile: 30.sp,
                tablet: 40.sp,
                desktop: 50.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
}
