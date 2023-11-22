import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillDetail extends StatelessWidget {
  const SkillDetail({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: getValueForScreenType(
          context: context,
          mobile: 25.sp,
          tablet: 35.sp,
          desktop: 45.sp,
        ),
      ),
    );
  }
}
