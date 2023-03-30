import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';
import 'package:randy_portofolio/utils/launch_url.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Let\'s Make Something\nAmazing Together.',
                        style: TextStyle(
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Information',
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => LaunchURL.openURL(
                                    'www.linkedin.com/in/randytia-akbar-bbb5aa93/'),
                                icon: FaIcon(
                                  FontAwesomeIcons.linkedin,
                                  color: ColorManager.primary,
                                ),
                              ),
                              IconButton(
                                onPressed: () =>
                                    LaunchURL.openURL('github.com/randytia29'),
                                icon: FaIcon(
                                  FontAwesomeIcons.github,
                                  color: ColorManager.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
