import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/color_pallete.dart';
import 'package:randy_portofolio/ui/widget/menu_portofolio.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPallete.primary,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150.h,
                        height: 150.h,
                        child: Image.asset(
                          'assets/dashatar.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      MenuPortofolio(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
