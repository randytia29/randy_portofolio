import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../shared/image_assets.dart';
import 'menu_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

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
              ImageAssets.dashatar,
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
                    context.goNamed('home');
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                MenuButton(
                  menu: 'ABOUT',
                  onPressed: () {
                    context.goNamed('about');
                  },
                ),
                SizedBox(
                  width: 10.w,
                ),
                MenuButton(
                  menu: 'PROJECT',
                  onPressed: () {
                    context.goNamed('project');
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
