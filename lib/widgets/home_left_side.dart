import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeLeftSide extends StatelessWidget {
  const HomeLeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: RichText(
        text: TextSpan(
          text: 'Hello\n',
          style: TextStyle(
            color: Colors.black,
            fontSize: getValueForScreenType(
              context: context,
              mobile: 45.sp,
              tablet: 60.sp,
              desktop: 75.sp,
            ),
          ),
          children: [
            const TextSpan(
              text: 'I\'m Randytia Akbar\n',
              style: TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: 'Flutter Developer\n',
              style: TextStyle(
                fontSize: getValueForScreenType(
                  context: context,
                  mobile: 35.sp,
                  tablet: 50.sp,
                  desktop: 65.sp,
                ),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            TextSpan(
              text: 'Welcome to My portfolio',
              style: TextStyle(
                fontSize: getValueForScreenType(
                  context: context,
                  mobile: 25.sp,
                  tablet: 30.sp,
                  desktop: 45.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
