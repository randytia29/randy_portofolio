import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailAbout extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  DetailAbout({this.title, this.subtitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 35.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey[400]),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            subtitle,
            style: TextStyle(fontSize: 30.sp),
          ),
        )
      ],
    );
  }
}
