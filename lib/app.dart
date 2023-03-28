import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/pages/mobile/mobile_home_page.dart';

import 'theme_manager/theme_data_manager.dart';
import 'utils/router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: kIsWeb ? const Size(720, 1480) : const Size(410, 860),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        if (kIsWeb) {
          return MaterialApp.router(
            theme: getApplicationThemeData(),
            routerConfig: CustomRouter.router,
          );
        }

        return MaterialApp(
          theme: getApplicationThemeData(),
          home: const MobileHomePage(),
        );
      },
    );
  }
}
