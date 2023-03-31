import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/theme_manager/color_manager.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineWorksExp extends StatelessWidget {
  const TimelineWorksExp({
    super.key,
    required this.role,
    required this.office,
    required this.duration,
    this.isFirst = false,
    this.isLast = false,
  });

  final String role;
  final String office;
  final String duration;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      indicatorStyle: IndicatorStyle(
        color: ColorManager.primary,
        iconStyle: isFirst
            ? IconStyle(iconData: Icons.laptop, color: ColorManager.white)
            : null,
        width: 30,
      ),
      afterLineStyle: LineStyle(color: ColorManager.primary.withOpacity(0.5)),
      beforeLineStyle: LineStyle(color: ColorManager.primary.withOpacity(0.5)),
      isFirst: isFirst,
      isLast: isLast,
      alignment: TimelineAlign.center,
      endChild: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              role,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              office,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              duration,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
