import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:randy_portofolio/shared/color_pallete.dart';
import 'package:randy_portofolio/shared/image_assets.dart';
import 'package:randy_portofolio/ui/page/about_page.dart';
import 'package:randy_portofolio/ui/page/home_page.dart';
import 'package:randy_portofolio/ui/page/project_page.dart';

import '../widget/menu_button.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPallete.primary,
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 125.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        if (currentIndex == 0) {
                          return HomePage();
                        } else if (currentIndex == 1) {
                          return AboutPage();
                        } else if (currentIndex == 2) {
                          return ProjectPage();
                        }
                        return Container();
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 125.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 125.h,
                    height: 125.h,
                    child: Image.asset(
                      ImageAssets.dashatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 125.h,
                    child: Row(
                      children: [
                        MenuButton(
                          menu: 'HOME',
                          onPressed: () {
                            setState(() {
                              currentIndex = 0;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        MenuButton(
                          menu: 'ABOUT',
                          onPressed: () {
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        MenuButton(
                          menu: 'PROJECT',
                          onPressed: () {
                            setState(() {
                              currentIndex = 2;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
