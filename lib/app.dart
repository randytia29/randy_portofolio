import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_manager/theme_data_manager.dart';
import 'utils/router.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(720, 1480),
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
        );
      },
    );
  }
}
