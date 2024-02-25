import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:universal_html/html.dart';

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
          writePdf(kelurahan: 'kalipancur', bulan: 'februari', tahun: '2024');

          await savePdf();
        },
        child: const Icon(Icons.save),
      ),
      body: const Center(
        child: Text('Test Linmas'),
      ),
      // body: SafeArea(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         const Header(),
      //         const Divider(),
      //         32.h.spaceY,
      //         ResponsiveBuilder(
      //           builder: (context, sizingInformation) {
      //             if (sizingInformation.isDesktop ||
      //                 sizingInformation.isTablet) {
      //               return const WebBody();
      //             } else {
      //               return const MobileBody();
      //             }
      //           },
      //         ),
      //         Container(
      //           color: ColorManager.primary.withOpacity(0.2),
      //           width: double.maxFinite,
      //           padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.h),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               const Description(),
      //               32.h.spaceY,
      //               const WorkExperience()
      //             ],
      //           ),
      //         ),
      //         Padding(
      //           padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
      //           child: Row(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Expanded(
      //                 flex: 2,
      //                 child: Text(
      //                   'Let\'s Make Something\nAmazing Together.',
      //                   style: TextStyle(
      //                     fontSize: 60.sp,
      //                     fontWeight: FontWeight.w800,
      //                   ),
      //                 ),
      //               ),
      //               Expanded(
      //                 flex: 1,
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Information',
      //                       style: TextStyle(
      //                         fontSize: 32.sp,
      //                         fontWeight: FontWeight.w600,
      //                       ),
      //                     ),
      //                     Row(
      //                       children: [
      //                         IconButton(
      //                           onPressed: () => LaunchURL.openURL(
      //                               'www.linkedin.com/in/randytia-akbar-bbb5aa93/'),
      //                           icon: FaIcon(
      //                             FontAwesomeIcons.linkedin,
      //                             color: ColorManager.primary,
      //                           ),
      //                         ),
      //                         IconButton(
      //                           onPressed: () =>
      //                               LaunchURL.openURL('github.com/randytia29'),
      //                           icon: FaIcon(
      //                             FontAwesomeIcons.github,
      //                             color: ColorManager.primary,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
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

  void writePdf({
    required String kelurahan,
    required String bulan,
    required String tahun,
  }) =>
      pdf.addPage(
        pw.MultiPage(
          pageFormat: PdfPageFormat.a4,
          margin: const pw.EdgeInsets.only(
            left: 32,
            right: 32,
            top: 40,
            bottom: 32,
          ),
          build: (_) => [
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Column(
                children: [
                  pw.Text(
                    'LAPORAN KEGIATAN SATLINMAS KELURAHAN ${kelurahan.toUpperCase()}',
                  ),
                  pw.Text('BULAN ${bulan.toUpperCase()} ${tahun.toUpperCase()}')
                ],
              ),
            ),
          ],
        ),
      );
}
