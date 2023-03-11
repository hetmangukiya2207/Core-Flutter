import 'package:flutter/material.dart';
import 'package:pproject_4/views/utils/images_utils.dart';

class WinningPage extends StatefulWidget {
  const WinningPage({Key? key}) : super(key: key);

  @override
  State<WinningPage> createState() => _WinningPageState();
}

class _WinningPageState extends State<WinningPage> {
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
                child: Image.asset(ImagePath + wonImage)),
            Spacer(),
            const Text(
              "Your Answer Is Correct...",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  fontSize: 16),
            ),
            Spacer(),
            const Text(
              "₹ 1000",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffC78640),
                  fontSize: 18),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('GameOverPage');
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
                    "Next",
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
