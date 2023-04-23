import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pr_7_instagram_app/views/utils/ImageUtils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Duration duration = const Duration(seconds: 3);

    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: h * 0.5,),
            Image.asset(ImagePath + logo,height: h *0.15,),
            Spacer(),
            Text(
              "❗Designed By ❤ H R Mangukiya❗",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: h * 0.03,
              ),
            ),
            SizedBox(height: h *0.05,),
          ],
        ),
      ),
    );
  }
}
