import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

ImagePicker? picker = ImagePicker();

class _HomePageState extends State<HomePage> {
  File? img;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("IMAGE"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.ellipsis_vertical),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              var image = pw.MemoryImage(
                img!.readAsBytesSync(),
              );

              pw.Document pdf = pw.Document();
              pdf.addPage(
                pw.Page(
                    pageFormat: PdfPageFormat.a4,
                    build: (pw.Context context) {
                      return pw.Container(
                        height: h,
                        width: w,
                        child: pw.Center(
                          child: pw.Image(image),
                        ),
                      );
                    }),

              );
              await Printing.layoutPdf(onLayout: (format) {
                return pdf.save();
              });
            },
            icon: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: h * 0.1,
              child: Text(
                "ADD",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              backgroundColor: Colors.grey.shade200,
              foregroundImage: (img != null) ? FileImage(img as File) : null,
            ),
            FloatingActionButton(
              onPressed: () async {
                XFile? imageXfile =
                await picker?.pickImage(source: ImageSource.camera);
                setState(() {
                  String ImagePath = imageXfile!.path;
                  img = File(ImagePath);
                });
              },
              mini: true,
              child: const Icon(
                CupertinoIcons.add,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
