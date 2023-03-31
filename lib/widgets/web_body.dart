import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'email_me.dart';
import 'greetings.dart';
import 'photo_me.dart';
import 'short_desc.dart';
import 'year_experience.dart';

class WebBody extends StatelessWidget {
  const WebBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      margin: EdgeInsets.symmetric(horizontal: 40.w),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PhotoMe(
            heightPhoto: 500.h,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Greetings(), EmailMe(), YearExperience()],
                ),
              ),
              const Expanded(
                flex: 1,
                child: ShortDesc(),
              )
            ],
          )
        ],
      ),
    );
  }
}
