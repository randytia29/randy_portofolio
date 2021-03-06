import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/launch_url.dart';

class ProjectCard extends StatelessWidget {
  final String imageProject;
  final String urlString;

  ProjectCard({this.imageProject, this.urlString});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await LaunchURL.openURL(urlString);
      },
      child: Container(
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
      ),
    );
  }
}
