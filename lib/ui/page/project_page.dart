import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/image_assets.dart';
import 'package:randy_portofolio/shared/launch_url.dart';
import 'package:randy_portofolio/ui/widget/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widget/category_project.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: ListView(
          children: [
            Text(
              'Projects',
              style: TextStyle(
                fontSize: getValueForScreenType(
                  context: context,
                  mobile: 40.sp,
                  tablet: 50.sp,
                  desktop: 60.sp,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CategoryProject(
              title: 'Mobile',
              projects: [
                ProjectCard(
                  imageProject: ImageAssets.pesonaNgaliyanHebat,
                  onTap: () async {
                    await LaunchURL.openURL(
                        'https://play.google.com/store/apps/details?id=com.hebat.kecamatanngaliyan.pesonangaliyanhebat');
                  },
                ),
                ProjectCard(
                  imageProject: ImageAssets.glowStore,
                  onTap: () async {
                    await LaunchURL.openURL(
                        'https://play.google.com/store/apps/details?id=com.ecclesion.ella');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            const CategoryProject(
              title: 'Web',
              projects: [
                ProjectCard(
                  imageProject: ImageAssets.dashatar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
