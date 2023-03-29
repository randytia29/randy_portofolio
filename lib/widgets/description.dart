import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme_manager/color_manager.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          color: ColorManager.black,
          fontSize: 30.sp,
          fontWeight: FontWeight.w500,
        ),
        children: [
          const TextSpan(text: 'What do I help?\n'),
          TextSpan(
            text:
                'I will help you build a responsive application with all devices, I use Bloc state management and atomic design.',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
