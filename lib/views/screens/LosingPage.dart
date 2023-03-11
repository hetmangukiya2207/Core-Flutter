import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/images_utils.dart';

class LosingPage extends StatefulWidget {
  const LosingPage({Key? key}) : super(key: key);

  @override
  State<LosingPage> createState() => _LosingPageState();
}

class _LosingPageState extends State<LosingPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Spacer(),
            SizedBox(
                height: h * 0.35,
                width: w * 0.35,
                child: Image.network(ImagePath + loseImage)),
            Spacer(),
            const Text(
              "oops!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD4D4FF),
                  fontSize: 16),
            ),
            Spacer(),
            const Text(
              "Sorry You Are The Loose...",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD4D4FF),
                  fontSize: 18),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              },
              child: Container(
                height: h * 0.07,
                width: w * 0.4,
                decoration: BoxDecoration(
                  color: const Color(0xffD6D6D6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Try Again",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
