import 'package:flutter/material.dart';
import 'package:randy_portofolio/shared/image_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeRightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Stack(
          children: [
            Center(
              child: Container(
                color: Colors.blue[100],
                width: 70.w,
                child: Image.asset(
                  ImageAssets.photo,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
