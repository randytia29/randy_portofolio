import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/ui/widget/menu_button.dart';

class MenuPortofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: Row(
        children: [
          MenuButton(
            menu: 'HOME',
          ),
          SizedBox(
            width: 10.w,
          ),
          MenuButton(
            menu: 'ABOUT',
          )
        ],
      ),
    );
  }
}
