import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/launch_url.dart';
import 'package:randy_portofolio/ui/widget/detail_about.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widget/experience_work.dart';
import '../widget/skill.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
              'About',
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
            const DetailAbout(
              title: 'Name',
              subtitle: 'Randytia Akbar',
            ),
            SizedBox(
              height: 30.h,
            ),
            const DetailAbout(
              title: 'Email',
              subtitle: 'randytia.akbar@gmail.com',
            ),
            SizedBox(
              height: 30.h,
            ),
            const DetailAbout(
              title: 'Phone',
              subtitle: '+6285640061290',
            ),
            SizedBox(
              height: 30.h,
            ),
            const DetailAbout(
              title: 'Domicile',
              subtitle: 'Semarang City, Indonesia',
            ),
            SizedBox(
              height: 30.h,
            ),
            DetailAbout(
              title: 'LinkedIn',
              subtitle: 'https://www.linkedin.com/in/randytia-akbar-bbb5aa93/',
              onTap: () async {
                await LaunchURL.openURL(
                    'https://www.linkedin.com/in/randytia-akbar-bbb5aa93/');
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            const ExperienceWork(),
            SizedBox(
              height: 30.h,
            ),
            const Skill()
          ],
        ),
      ),
    );
  }
}
