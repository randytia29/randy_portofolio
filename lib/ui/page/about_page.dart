import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/launch_url.dart';
import 'package:randy_portofolio/ui/widget/detail_about.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Stack(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: ListView(children: [
            Text(
              'About',
              style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            DetailAbout(
              title: 'Name',
              subtitle: 'Randytia Akbar',
              onTap: null,
            ),
            SizedBox(
              height: 30.h,
            ),
            DetailAbout(
              title: 'Email',
              subtitle: 'randytia.akbar@gmail.com',
              onTap: null,
            ),
            SizedBox(
              height: 30.h,
            ),
            DetailAbout(
              title: 'Phone',
              subtitle: '+6285640061290',
              onTap: null,
            ),
            SizedBox(
              height: 30.h,
            ),
            DetailAbout(
              title: 'Domicile',
              subtitle: 'Semarang City, Indonesia',
              onTap: null,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Experience Work',
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Kelurahan Kalipancur - IT Staff',
                  style: TextStyle(fontSize: 25.sp),
                ),
                Text(
                  'January 2018 – December 2019',
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Ella Skin Care - Flutter Developer',
                  style: TextStyle(fontSize: 25.sp),
                ),
                Text(
                  'July 2020 – April 2021',
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Imperial Healthtech - Flutter Developer',
                  style: TextStyle(fontSize: 25.sp),
                ),
                Text(
                  'April 2021 – August 2021',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skill',
                  style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Flutter',
                  style: TextStyle(fontSize: 25.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'BLoC',
                  style: TextStyle(fontSize: 25.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Firebase',
                  style: TextStyle(fontSize: 25.sp),
                ),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
