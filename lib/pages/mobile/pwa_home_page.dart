import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';
import 'package:randy_portofolio/widgets/short_desc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme_manager/color_manager.dart';
import '../../widgets/description.dart';
import '../../widgets/greetings.dart';
import '../../widgets/header.dart';
import '../../widgets/timeline_works_exp.dart';
import '../../widgets/web_body.dart';

class PwaHomePage extends StatelessWidget {
  const PwaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const Divider(),
              32.h.spaceY,
              ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  if (sizingInformation.isDesktop ||
                      sizingInformation.isTablet) {
                    return const WebBody();
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Greetings(), const ShortDesc(),
                        32.h.spaceY,
                        // PhotoMe(
                        //   heightPhoto: 450.h,
                        // ),
                        const Placeholder(), 32.h.spaceY
                      ],
                    );
                  }
                },
              ),
              Container(
                color: ColorManager.primary.withOpacity(0.2),
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Description(),
                    32.h.spaceY,
                    Column(
                      children: [
                        Text(
                          'My Work Experience',
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const TimelineWorksExp(
                          role: 'Mobile Application Developer',
                          office: 'ABAROBOTICS',
                          duration: 'Oct 2021 - Now',
                          isFirst: true,
                        ),
                        const TimelineWorksExp(
                          role: 'Flutter Developer',
                          office: 'Imperial Healthtech',
                          duration: 'Apr 2021 - Aug 2021',
                        ),
                        const TimelineWorksExp(
                          role: 'Flutter Developer',
                          office: 'Ella Skin Care',
                          duration: 'Jul 2020 - Apr 2021',
                          isLast: true,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
