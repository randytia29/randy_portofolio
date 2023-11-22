import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:randy_portofolio/utils/router.dart';

import '../theme_manager/asset_manager.dart';
import 'menu_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 125.h,
            height: 125.h,
            child: Image.asset(
              AssetManager.dashatar,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 125.h,
            child: Row(
              children: [
                MenuButton(
                  menu: 'HOME',
                  onPressed: () {
                    context.goNamed(CustomRouter.webHomePath);
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                MenuButton(
                  menu: 'ABOUT',
                  onPressed: () {
                    context.goNamed(CustomRouter.aboutPath);
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                MenuButton(
                  menu: 'PROJECT',
                  onPressed: () {
                    context.goNamed(CustomRouter.projectPath);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
