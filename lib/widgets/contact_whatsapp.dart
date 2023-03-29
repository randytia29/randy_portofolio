import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';

import '../utils/launch_url.dart';

class ContactWhatsapp extends StatelessWidget {
  const ContactWhatsapp({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '+$phoneNumber',
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
        16.w.spaceX,
        SizedBox(
          width: 75.h,
          height: 75.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: () async {
              await LaunchURL.openURL('wa.me/$phoneNumber');
            },
            child: const FaIcon(FontAwesomeIcons.whatsapp),
          ),
        )
      ],
    );
  }
}
