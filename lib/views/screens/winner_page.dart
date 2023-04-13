import 'package:flutter/material.dart';

import '../../utils.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: winner_page(),
  ));
}

class winner_page extends StatefulWidget {
  @override
  State<winner_page> createState() => _winner_page();
}

class _winner_page extends State<winner_page> {
  @override
  Widget build(BuildContext context) {
    Object? winnerPrice = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'assets/images/fire.png',

            ),
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Your Answer is Correct",
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
            child: Text(
              "You Won\nRs.$winnerPrice ",
              style: const TextStyle(
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
                  if (Global.firstQuestion < Global.questions.length - 1) {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  } else {
                    Navigator.of(context).pushNamed('gameover_page');
                  }
                });
              },

              child: const Text(
                'Next',
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