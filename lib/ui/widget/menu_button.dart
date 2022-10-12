import 'package:flutter/material.dart';
import 'package:randy_portofolio/shared/color_pallete.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MenuButton extends StatelessWidget {
  final String menu;
  final VoidCallback onPressed;

  const MenuButton({super.key, required this.menu, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.hovered)) {
            return ColorPallete.hover;
          }
          return ColorPallete.secondary;
        }),
      ),
      onPressed: onPressed,
      child: Text(
        menu,
        style: TextStyle(
          fontSize: getValueForScreenType(
            context: context,
            mobile: 40.sp,
            tablet: 45.sp,
            desktop: 50.sp,
          ),
        ),
      ),
    );
  }
}
