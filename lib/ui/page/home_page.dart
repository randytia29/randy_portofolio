import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/ui/widget/home_left_side.dart';
import 'package:randy_portofolio/ui/widget/home_right_side.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeLeftSide(),
                  SizedBox(
                    width: 50.w,
                  ),
                  HomeRightSide()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
