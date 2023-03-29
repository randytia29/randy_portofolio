import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortDesc extends StatelessWidget {
  const ShortDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'I build powerful and highly scalable applications using Flutter.',
      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
    );
  }
}
