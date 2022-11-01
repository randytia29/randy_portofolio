// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/color_pallete.dart';
import 'package:randy_portofolio/shared/router.dart';
import 'package:randy_portofolio/shared/screen_size.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenSize.designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        theme: ThemeData(scaffoldBackgroundColor: ColorPallete.primary),
        routerDelegate: CustomRouter.router.routerDelegate,
        routeInformationParser: CustomRouter.router.routeInformationParser,
        routeInformationProvider: CustomRouter.router.routeInformationProvider,
      ),
    );
  }
}
