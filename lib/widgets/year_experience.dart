import 'package:flutter/widgets.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';

class YearExperience extends StatelessWidget {
  const YearExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          '3',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
          ),
        ),
        4.0.spaceX,
        Text(
          'year\nexperiences'.toUpperCase(),
        )
      ],
    );
  }
}
