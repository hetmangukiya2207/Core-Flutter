import 'package:flutter/material.dart';
import 'package:lecture_8_1_2/views/screens/HomePage.dart';


void main() {
  runApp(
    const Myapp(),
  );
}

class  Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),

    );
  }
}