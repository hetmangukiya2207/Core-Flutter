import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.brown,
          title: const Text(
            "Mashal",
          ),
        ),
        body: Align(
          child: Container(
            width: 150,
            height: 250,
            alignment: const Alignment(0, -2.5),
            decoration: const BoxDecoration(
              color: Colors.brown,
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.white,
                  width: 50,
                ),
                horizontal: BorderSide(
                  color: Color(0xffAD8E70),
                  width: 40,
                ),
              ),
            ),
            child: const Text(
              "🔥",
              style: TextStyle(
                fontSize: 45,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
