import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'contact_whatsapp.dart';
import 'dash_bird.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, left: 40.w, right: 40.w),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DashBird(),
          ContactWhatsapp(
            phoneNumber: '6285640061290',
          )
        ],
      ),
    );
  }
}
