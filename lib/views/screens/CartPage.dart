import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_5_inoice_generator/views/utils/ListUtils.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../utils/ImageUtils.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart Page",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xffEDEDED),
        actions: [
          IconButton(
            onPressed: () async {
              pw.Document pdf = pw.Document();
              pdf.addPage(
                pw.Page(
                    pageFormat: PdfPageFormat.a4,
                    build: (pw.Context context) {
                      return pw.Container(
                        height: h,
                        width: w,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.SizedBox(height: h * 0.02),
                            pw.Divider(),
                            pw.Row(
                              children: [
                                pw.Spacer(),
                                pw.Text(
                                  "Akshya Nagar 1st Block\n1st Cross, Rammurthy nagar,\nBangalore-560016",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontSize: h * 0.02,
                                    fontWeight: pw.FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            pw.SizedBox(height: h * 0.02),
                            pw.Divider(),
                            pw.Row(children: [
                              pw.Expanded(
                                child: pw.Text(
                                  "Name : Het Mangukiya",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                              pw.Expanded(
                                child: pw.Text(
                                  "Date : 26-04-2023",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                            ]),
                            pw.Row(children: [
                              pw.Expanded(
                                child: pw.Text(
                                  "GST No : HWEMFJUFB18DBDB",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                              pw.Expanded(
                                child: pw.Text(
                                  "Phone Number : 8866005029",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              )
                            ]),
                            pw.Row(children: [
                              pw.Expanded(
                                child: pw.Text(
                                  "Age : 17",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                              pw.Expanded(
                                child: pw.Text(
                                  "Bill No : 01",
                                  style: pw.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: h * 0.02,
                                  ),
                                ),
                              ),
                            ]),
                            pw.Divider(),
                            pw.SizedBox(
                              height: h * 0.05,
                            ),
                            pw.Divider(),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("Sr No"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("Item Name"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("Quantity"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("Rate"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("Total"),
                                ),
                              ],
                            ),
                            pw.Divider(),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("1"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("Apple 14 Pro Max"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1,44,999"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1,44,999"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("2"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("MacBook Pro M2 Chip"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("2"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1,30,000"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("2,60,000"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("3"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("Oppo A5 s"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("22,000"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("22,000"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("4"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("NoiseFit Evolve 3"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("2"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("3,000"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("6,000"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("5"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child:
                                      pw.Text("HP 15s- Ryzen 5-5500U 8GB RAM"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("54,000"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("54,000"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("6"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("ASUS VivoBook 14"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("35,000"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("35,000"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text("7"),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("Amazon Fire 7"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1,20,000"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("1,20,000"),
                                ),
                              ],
                            ),
                            pw.SizedBox(
                              height: h * 0.02,
                            ),
                            pw.Divider(),
                            pw.SizedBox(height: h * 0.01),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                  child: pw.Text(""),
                                ),
                                pw.Expanded(
                                  flex: 3,
                                  child: pw.Text("Total Amount"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("9"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("5,08,999"),
                                ),
                                pw.Expanded(
                                  child: pw.Text("6,41,999"),
                                ),
                              ],
                            ),
                            pw.Divider(),
                            pw.SizedBox(
                              height: h * 0.02,
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
            icon: Icon(
              CupertinoIcons.printer,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: w * 0.02,
          ),
        ],
      ),
      backgroundColor: Color(0xffEDEDED),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cart Items",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: h * 0.02,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: CartList.map(
                    (e) => Row(
                      children: [
                        Container(
                          height: h * 0.4,
                          width: w * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.015),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(h * 0.01),
                            child: Column(
                              children: [
                                Container(
                                  height: h * 0.25,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(h * 0.01),
                                    color: Colors.black,
                                  ),
                                  child: Image.asset(
                                    e['ItemImages'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e['BrandName'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.015,
                                    ),
                                    Text(
                                      e['Price'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.03,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                      ],
                    ),
                  ).toList(),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                "Suggested",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: h * 0.02,
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: Suggested.map(
                    (e) => Row(
                      children: [
                        Container(
                          height: h * 0.42,
                          width: w * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(h * 0.015),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(h * 0.01),
                            child: Column(
                              children: [
                                Container(
                                  height: h * 0.25,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(h * 0.01),
                                    color: Colors.black,
                                  ),
                                  child: Image.asset(
                                    e['ItemImages'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      e['BrandName'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(
                                      e['Price'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * 0.025,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  height: h * 0.05,
                                  width: w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(h * 0.01),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: Text(
                                    "Details",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: h * 0.025,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                      ],
                    ),
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
