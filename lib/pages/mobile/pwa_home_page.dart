import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:randy_portofolio/theme_manager/space_manager.dart';
import 'package:randy_portofolio/utils/launch_url.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:universal_html/html.dart';

import '../../theme_manager/color_manager.dart';
import '../../widgets/description.dart';
import '../../widgets/header.dart';
import '../../widgets/mobile_body.dart';
import '../../widgets/web_body.dart';
import '../../widgets/work_experience.dart';

class PwaHomePage extends StatefulWidget {
  const PwaHomePage({super.key});

  @override
  State<PwaHomePage> createState() => _PwaHomePageState();
}

class _PwaHomePageState extends State<PwaHomePage> {
  late pw.Document pdf;

  @override
  void initState() {
    super.initState();
    pdf = pw.Document();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          writePdf();

          await savePdf();
        },
        child: const Icon(Icons.save),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const Divider(),
              32.h.spaceY,
              ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  if (sizingInformation.isDesktop ||
                      sizingInformation.isTablet) {
                    return const WebBody();
                  } else {
                    return const MobileBody();
                  }
                },
              ),
              Container(
                color: ColorManager.primary.withOpacity(0.2),
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Description(),
                    32.h.spaceY,
                    const WorkExperience()
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Let\'s Make Something\nAmazing Together.',
                        style: TextStyle(
                          fontSize: 60.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Information',
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => LaunchURL.openURL(
                                    'www.linkedin.com/in/randytia-akbar-bbb5aa93/'),
                                icon: FaIcon(
                                  FontAwesomeIcons.linkedin,
                                  color: ColorManager.primary,
                                ),
                              ),
                              IconButton(
                                onPressed: () =>
                                    LaunchURL.openURL('github.com/randytia29'),
                                icon: FaIcon(
                                  FontAwesomeIcons.github,
                                  color: ColorManager.primary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> savePdf() async {
    final pdfInByte = await pdf.save();

    List<int> fileInts = List.from(pdfInByte);
    AnchorElement(
        href:
            "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(fileInts)}")
      ..setAttribute("download", "${DateTime.now().millisecondsSinceEpoch}.pdf")
      ..click();
  }

  void writePdf() => pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          margin: const pw.EdgeInsets.only(
            left: 32,
            right: 32,
            top: 40,
            bottom: 32,
          ),
          build: (_) => [
            pw.Header(level: 0, child: pw.Text('Easy Approach Document')),
            pw.Paragraph(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
            ),
            pw.Paragraph(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
            ),
            pw.Header(level: 1, child: pw.Text('Second Heading')),
            pw.Paragraph(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
            ),
            pw.Paragraph(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
            ),
            pw.Paragraph(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
            )
          ],
        ),
      );
}
