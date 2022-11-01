import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CategoryProject extends StatelessWidget {
  const CategoryProject({
    Key? key,
    required this.title,
    required this.projects,
  }) : super(key: key);

  final String title;
  final List<Widget> projects;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getValueForScreenType(
              context: context,
              mobile: 30.sp,
              tablet: 40.sp,
              desktop: 50.sp,
            ),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Wrap(
          spacing: 5.w,
          runSpacing: 5.h,
          children: projects,
        )
      ],
    );
  }
}
