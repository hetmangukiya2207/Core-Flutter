import 'dart:math';
import 'package:flutter/material.dart';
import 'package:viva_2_2/views/utils/ImageUtils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int s = 0;
  int m = 0;
  int h = 0;

  void timer() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          s = DateTime.now().second;
          m = DateTime.now().minute;
          h = DateTime.now().hour;
          timer();
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.vertical_distribute,color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "DIGI CLOCK",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: h * 0.02,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(ImagePath + B1),
            Transform.rotate(
              angle: ((s + 15) * pi) / 30,
              child: Divider(
                color: Colors.white,
                indent: 60,
                thickness: height * 0.004,
                endIndent: width / 2,
              ),
            ),
            Transform.rotate(
              angle: ((m + 15) * pi) / 30,
              child: Divider(
                color: Colors.white,
                thickness: height * 0.007,
                indent: 75,
                endIndent: width * 0.5,
              ),
            ),
            Transform.rotate(
              angle: ((h + 15) * pi) / 30,
              child: Divider(
                color: Colors.white,
                thickness: height * 0.01,
                indent: 95,
                endIndent: width * 0.5,
              ),
            ),
            Text(
              '$h : $m : $s',
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
