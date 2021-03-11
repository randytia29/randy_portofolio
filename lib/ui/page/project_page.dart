import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/image_assets.dart';
import 'package:randy_portofolio/shared/launch_url.dart';
import 'package:randy_portofolio/ui/widget/project_card.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: ListView(
              children: [
                Text(
                  'Projects',
                  style:
                      TextStyle(fontSize: 40.ssp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: [
                    Text(
                      'Mobile',
                      style: TextStyle(
                          fontSize: 25.ssp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Wrap(
                      spacing: 5.w,
                      runSpacing: 5.h,
                      children: [
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
                    )
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Column(
                  children: [
                    Text(
                      'Web',
                      style: TextStyle(
                          fontSize: 25.ssp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Wrap(
                      spacing: 5.w,
                      runSpacing: 5.h,
                      children: [
                        ProjectCard(
                          imageProject: ImageAssets.dashatar,
                          onTap: null,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
