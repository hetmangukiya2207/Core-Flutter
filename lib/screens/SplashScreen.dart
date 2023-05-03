import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/ImageUtils.dart';

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

    Timer (duration, () {
      Navigator.of(context).pushReplacementNamed('SelectRegion');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center,child: Image.asset(ImagePath + AppLogo)),
      backgroundColor: Colors.black,
    );
  }
}
