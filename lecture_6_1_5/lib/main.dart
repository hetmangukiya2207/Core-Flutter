import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text("Letter Cover"),
        ),
        body: Align(
          child: Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.green,
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: Colors.lightGreen,
                  width: 120,
                ),
                vertical: BorderSide(
                  color: Colors.green,
                  width: 120,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
