import 'package:flutter/material.dart';
import 'package:lecture_10_2/views/screens/HomePage.dart';
import 'package:lecture_10_2/views/screens/Page1.dart';

void main() {
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: homePage(),
      routes: {
        '/': (context) => HomePage(),
        'page1': (context) => Page1(),
      },
    );
  }
}
