import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "Opened Doors",
          ),
        ),
        body: Align(
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.white60,
                  width: 70,
                ),
                horizontal: BorderSide(
                  color: Colors.black,
                  width: 40,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
