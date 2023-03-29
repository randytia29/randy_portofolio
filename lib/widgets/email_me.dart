import 'package:flutter/material.dart';

import '../utils/launch_url.dart';

class EmailMe extends StatelessWidget {
  const EmailMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async =>
          await LaunchURL.openMail('randytia.akbar@gmail.com'),
      child: const Text(
        'randytia.akbar@gmail.com',
        style: TextStyle(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
