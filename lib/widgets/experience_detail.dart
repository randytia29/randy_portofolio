import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

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
              mobile: 25.sp,
              tablet: 35.sp,
              desktop: 45.sp,
            ),
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 20.sp,
              tablet: 30.sp,
              desktop: 40.sp,
            ),
          ),
        )
      ],
    );
  }
}
