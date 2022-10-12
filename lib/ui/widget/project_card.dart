import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectCard extends StatelessWidget {
  final String imageProject;
  final VoidCallback? onTap;

  const ProjectCard({super.key, required this.imageProject, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150.h,
        height: 150.h,
        padding: EdgeInsets.all(20.h),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
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
