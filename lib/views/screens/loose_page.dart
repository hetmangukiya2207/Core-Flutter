import 'package:flutter/material.dart';

import '../../utils.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: lose_page(),
  ));
}

class lose_page extends StatefulWidget {
  const lose_page({super.key});

  @override
  State<lose_page> createState() => _lose_page();
}

class _lose_page extends State<lose_page> {
  @override
  Widget build(BuildContext context) {
    Object? winnerPrice = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/lose.png',
            height: 100,
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "your answer is wrong....",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Sorry You are \n loose game",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
                  Global.firstQuestion = 0;

                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                });
              },
              child: const Text(
                'Try again',
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