import 'package:flutter/material.dart';
import 'package:randy_portofolio/shared/color_pallete.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuButton extends StatelessWidget {
  final String menu;

  const MenuButton({Key key, this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return ColorPallete.hover;
        }
        return ColorPallete.secondary;
      })),
      onPressed: () {},
      child: Text(
        menu,
        style: TextStyle(fontSize: 20.ssp),
      ),
    );
  }
}
