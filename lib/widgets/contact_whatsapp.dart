import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:randy_portofolio/theme_manager/color_manager.dart';

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
        ),
        IconButton(
          onPressed: () async => await LaunchURL.openURL('wa.me/$phoneNumber'),
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
            color: ColorManager.primary,
          ),
        ),
      ],
    );
  }
}
