import 'package:flutter/material.dart';
import 'package:pproject_4/views/utils/images_utils.dart';

class GameOverPage extends StatefulWidget {
  const GameOverPage({Key? key}) : super(key: key);

  @override
  State<GameOverPage> createState() => _GameOverPageState();
}

class _GameOverPageState extends State<GameOverPage> {
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
              "Congratlations",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5B5F62),
                  fontSize: 16),
            ),
            Spacer(),
            const Text(
              "Game over",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff),
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
                    "Restart",
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
