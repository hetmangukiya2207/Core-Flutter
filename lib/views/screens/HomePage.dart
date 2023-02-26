import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/image_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isList = true;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gallery Viewer",
          style:
              TextStyle(color: Colors.white, fontSize: 24, letterSpacing: 10),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (isList == true) {
                  isList = false;
                } else {
                  isList = true;
                }
              });
            },
            child: Icon(Icons.grid_3x3_sharp),
          ),
        ],
      ),
      body: (isList == true)
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i3,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i4,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i5,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i6,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i7,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i8,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i9,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: h * 0.4,
                    width: w,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i10,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i4,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i6,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i7,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i8,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i9,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: h,
                    width: w * 0.4,
                    color: Colors.amber,
                    child: Image.asset(
                      imagePath + i10,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
