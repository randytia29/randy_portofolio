import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';
import 'package:randy_portofolio/widgets/short_desc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../theme_manager/color_manager.dart';
import '../../widgets/description.dart';
import '../../widgets/greetings.dart';
import '../../widgets/header.dart';
import '../../widgets/web_body.dart';
import '../../widgets/work_experience.dart';

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
                    const WorkExperience()
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
