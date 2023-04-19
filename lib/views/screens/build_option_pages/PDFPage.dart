import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_4_resume_builder_app/views/utils/GlobalVariable.dart';
import 'package:pr_4_resume_builder_app/views/utils/ImageUtils.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../utils/ColorUtils.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({Key? key}) : super(key: key);

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(CupertinoIcons.back),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              pw.Document pdf = pw.Document();
              // var img = pw.MemoryImage(
              //   image!.readAsBytesSync(),
              // );
              pdf.addPage(
                pw.Page(
                    pageFormat: PdfPageFormat.a4,
                    build: (pw.Context context) {
                      return pw.Container(
                        height: h,
                        width: w,
                        child: pw.Column(
                          children: [
                            pw.SizedBox(height: h * 0.05),
                            pw.Container(
                              height: h * 0.05,
                              width: w * 0.05,
                              decoration: pw.BoxDecoration(
                                color: PdfColors.blue,
                              ),
                              // child: pw.Image(
                              //   fit: pw.BoxFit.fill,
                              //   img,
                              // ),
                            ),
                            pw.Text(
                              "$name",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              "$email",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              "$phone",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              "$address1",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              "$address2",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.Text(
                              "$address3",
                              style: pw.TextStyle(
                                fontSize: 18,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              );
              await Printing.layoutPdf(onLayout: (format) {
                return pdf.save();
              });
            },
            icon: Icon(Icons.print),
          ),
        ],
        elevation: 0,
        backgroundColor: BlueColor,
        centerTitle: true,
        title: const Text("PDF & Printing"),
        toolbarHeight: h * 0.2,
      ),
      body: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            SizedBox(height: h * 0.05),
            Text(
              "$name",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$email",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$phone",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$address1",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$address2",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$address3",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
