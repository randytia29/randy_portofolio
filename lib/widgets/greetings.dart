import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme_manager/color_manager.dart';

class Greetings extends StatelessWidget {
  const Greetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: ColorManager.black,
          fontSize: 45.sp,
          fontWeight: FontWeight.w500,
        ),
        children: [
          const TextSpan(text: 'Hey There,\n'),
          const TextSpan(text: 'I\'m Randy\n'),
          TextSpan(
            text:
                'I build powerful and highly scalable applications using Flutter.',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
