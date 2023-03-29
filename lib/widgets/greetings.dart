import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Greetings extends StatelessWidget {
  const Greetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hey There,\nI\'m Randy',
      style: TextStyle(
        fontSize: 65.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
