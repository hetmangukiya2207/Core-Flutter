import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';

class InterestHobbiesPage extends StatefulWidget {
  const InterestHobbiesPage({Key? key}) : super(key: key);

  @override
  State<InterestHobbiesPage> createState() => _InterestHobbiesPageState();
}

class _InterestHobbiesPageState extends State<InterestHobbiesPage> {
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
        elevation: 0,
        backgroundColor: BlueColor,
        centerTitle: true,
        title: Text("Interest/Hobbies"),
        toolbarHeight: h * 0.2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          height: h * 0.6,
          width: w,
          decoration: BoxDecoration(
              color: WhiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 2,
                    color: Colors.grey.shade300),
              ]),
        ),
      ),
      backgroundColor: BGColor,
    );
  }
}
