import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.h),
      child: RichText(
        text: TextSpan(
          text: 'Hello\n',
          style: TextStyle(fontSize: 35.sp),
          children: [
            TextSpan(
              text: 'I\'m Randytia Akbar\n',
              style: TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: 'Flutter Developer\n',
              style: TextStyle(
                fontSize: 25.sp,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
              ),
            ),
            TextSpan(
              text: 'Welcome to My portfolio',
              style: TextStyle(fontSize: 15.sp),
            )
          ],
        ),
      ),
    );
  }
}
