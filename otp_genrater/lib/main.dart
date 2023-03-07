import 'package:flutter/material.dart';
import 'package:otp_genrater/views/screens/HomePage.dart';

void main() => runApp(
      const Myapp(),
    );

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
