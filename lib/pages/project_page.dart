import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/asset_manager.dart';
import 'package:randy_portofolio/widgets/project_card.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../utils/launch_url.dart';
import '../widgets/category_project.dart';

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
                  imageProject: AssetManager.pesonaNgaliyanHebat,
                  onTap: () async {
                    await LaunchURL.openURL(
                        'https://play.google.com/store/apps/details?id=com.hebat.kecamatanngaliyan.pesonangaliyanhebat');
                  },
                ),
                ProjectCard(
                  imageProject: AssetManager.glowStore,
                  onTap: () async {
                    await LaunchURL.openURL(
                        'https://play.google.com/store/apps/details?id=com.ecclesion.ella');
                  },
                ),
                const ProjectCard(
                  imageProject: AssetManager.ports,
                ),
                const ProjectCard(
                  imageProject: AssetManager.pmc,
                ),
                const ProjectCard(
                  imageProject: AssetManager.rswn,
                ),
                ProjectCard(
                  imageProject: AssetManager.hib,
                  onTap: () async {
                    await LaunchURL.openURL(
                        'https://play.google.com/store/apps/details?id=com.abarobotics.officetembalangmobile');
                  },
                ),
                const ProjectCard(
                  imageProject: AssetManager.hermina,
                ),
                const ProjectCard(
                  imageProject: AssetManager.mahaKarya,
                ),
                const ProjectCard(
                  imageProject: AssetManager.fisiphoria,
                ),
                const ProjectCard(
                  imageProject: AssetManager.wifkain,
                ),
                const ProjectCard(
                  imageProject: AssetManager.pln,
                )
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            const CategoryProject(
              title: 'Web',
              projects: [
                ProjectCard(
                  imageProject: AssetManager.dashatar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
