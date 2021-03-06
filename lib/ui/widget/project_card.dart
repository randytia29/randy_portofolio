import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectCard extends StatelessWidget {
  final String imageProject;

  ProjectCard({this.imageProject});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.h,
      height: 150.h,
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Center(
        child: Image.asset(
          imageProject,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
