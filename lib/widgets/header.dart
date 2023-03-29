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
      padding: EdgeInsets.only(top: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          DashBird(),
          ContactWhatsapp(
            phoneNumber: '6285640061290',
          )
        ],
      ),
    );
  }
}
