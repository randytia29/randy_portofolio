import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          top: 75.h,
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(fontSize: 35.ssp),
            ),
            Text(
              "I'm Randytia Akbar",
              style: TextStyle(fontSize: 35.ssp, color: Colors.white),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 25.ssp),
            ),
            Container(
              height: 2.h,
              width: 55.w,
              color: Colors.black,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Welcome to My portfolio',
              style: TextStyle(fontSize: 15.ssp),
            ),
          ],
        ),
      ),
    );
  }
}
