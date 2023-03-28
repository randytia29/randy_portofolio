import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../theme_manager/color_manager.dart';
import '../../widgets/dash_bird.dart';
import '../../widgets/description.dart';
import '../../widgets/greetings.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DashBird(),
                const Divider(),
                const Greetings(),
                32.h.spaceY,
                // const PhotoMe(),
                const Placeholder(),
                32.h.spaceY,
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
                      endChild: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Work Experience',
                              style: TextStyle(
                                color: ColorManager.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text('sdsd'),
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
        ),
      ),
    );
  }
}
