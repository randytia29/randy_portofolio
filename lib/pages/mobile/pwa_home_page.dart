import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';
import 'package:randy_portofolio/widgets/short_desc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../theme_manager/color_manager.dart';
import '../../widgets/description.dart';
import '../../widgets/greetings.dart';
import '../../widgets/header.dart';
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
                        const Placeholder(),
                      ],
                    );
                  }
                },
              ),
              32.h.spaceY,
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
                        TimelineTile(
                          alignment: TimelineAlign.center,
                          // startChild: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Text(
                          //       'Mobile Application Developer',
                          //       style: TextStyle(
                          //         fontSize: 20.sp,
                          //         fontWeight: FontWeight.w500,
                          //       ),
                          //     ),
                          //     Text(
                          //       'ABAROBOTICS',
                          //       style: TextStyle(
                          //         fontSize: 20.sp,
                          //         fontWeight: FontWeight.w500,
                          //       ),
                          //     ),
                          //     Text(
                          //       'Oct 2021 - Now',
                          //       style: TextStyle(
                          //         fontSize: 20.sp,
                          //         fontWeight: FontWeight.w500,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          endChild: Padding(
                            padding: EdgeInsets.only(left: 24.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Mobile Application Developer',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'ABAROBOTICS',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Oct 2021 - Now',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          isFirst: true,
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
