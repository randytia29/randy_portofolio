import 'package:flutter/widgets.dart';

import '../theme_manager/color_manager.dart';
import 'timeline_works_exp.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Work Experience',
          style: TextStyle(
            color: ColorManager.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        const TimelineWorksExp(
          role: 'Mobile Application Developer',
          office: 'ABAROBOTICS',
          duration: 'Oct 2021 - Now',
          isFirst: true,
        ),
        const TimelineWorksExp(
          role: 'Flutter Developer',
          office: 'Imperial Healthtech',
          duration: 'Apr 2021 - Aug 2021',
        ),
        const TimelineWorksExp(
          role: 'Flutter Developer',
          office: 'Ella Skin Care',
          duration: 'Jul 2020 - Apr 2021',
          isLast: true,
        )
      ],
    );
  }
}
