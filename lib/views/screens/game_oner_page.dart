import 'package:flutter/material.dart';

import '../../utils.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gameover_page(),
  ));
}

class gameover_page extends StatefulWidget {
  @override
  State<gameover_page> createState() => _gameover_page();
}

class _gameover_page extends State<gameover_page> {
  @override
  Widget build(BuildContext context) {
    Object? winnerPrice = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/fire.png',
            height: 100,
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Game Over",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            height: 40,
            width: 165,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (Global.firstQuestion == 10) {
                    Global.firstQuestion = 0;
                  }

                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                });
              },
              child: const Text(
                'Restart',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}