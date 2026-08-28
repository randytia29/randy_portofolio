import 'package:flutter/widgets.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';

class YearExperience extends StatelessWidget {
  const YearExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final yearExperience = DateTime.now().difference(DateTime(2020, 7));

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${(yearExperience.inDays / 365).toInt()}',
          style: const TextStyle(
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
