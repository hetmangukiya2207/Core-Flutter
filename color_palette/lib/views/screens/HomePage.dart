import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List c1 = [
    const Color(0xffF94C66),
    const Color(0xff94B49F),
    const Color(0xff9EB23B),
    const Color(0xff5FD068),
    const Color(0xff37E2D5),
    const Color(0xff14C38E),
  ];
  List c2 = [
    const Color(0xffD3EBCD),
    const Color(0xff1F4690),
    const Color(0xffF6C6EA),
    const Color(0xff990000),
    const Color(0xff371B58),
    const Color(0xff646FD4),
  ];
  List c3 = [
    const Color(0xff4CACBC),
    const Color(0xffFFA500),
    const Color(0xffE0DECA),
    const Color(0xffFF5B00),
    const Color(0xffECE5C7),
    const Color(0xff2E0249),
  ];
  List c4 = [
    const Color(0xff1B2430),
    const Color(0xff839AA8),
    const Color(0xff4B5D67),
    const Color(0xffF6FBF4),
    const Color(0xffF47C7C),
    const Color(0xffFFD24C),
  ];
  List c5 = [
    const Color(0xff1363DF),
    const Color(0xff3A5BA0),
    const Color(0xffFF06B7),
    const Color(0xff4B8673),
    const Color(0xff827397),
    const Color(0xff2F8F9D),
  ];
  List c6 = [
    const Color(0xffF15412),
    const Color(0xff34B3F1),
    const Color(0xffF2D1D1),
    const Color(0xffFAC213),
    const Color(0xffF24C4C),
    const Color(0xff16003B),
  ];
  @override
  Widget build(BuildContext context) {
    Random r1 = Random();
    int n1 = r1.nextInt(6);
    int n2 = r1.nextInt(6);
    int n3 = r1.nextInt(6);
    int n4 = r1.nextInt(6);
    int n5 = r1.nextInt(6);
    int n6 = r1.nextInt(6);

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          width: w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color(0xffDCE9F4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0, 1],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "\n \n Color Palette Generator",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3BB3F9),
                ),
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                height: h * 0.4,
                width: w * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: c1[n1],
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: c2[n2],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: c3[n3],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: c4[n4],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: c5[n5],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: c1[n1],
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 1,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: h * 0.1,
                  width: w * 0.6,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff3BB3F9),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: const Text(
                    "Generate",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff3BB3F9),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
