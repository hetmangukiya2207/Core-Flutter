import 'package:flutter/material.dart';

void main() {
  BorderSide side;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.tealAccent.shade700,
          title: const Text("3D Cube"),
        ),
        body: Align(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Colors.teal.shade500,
                      width: 40,
                    ),
                    vertical: BorderSide(
                      color: Colors.teal.shade700,
                      width: 40,
                    )),
                color: Colors.tealAccent),
          ),
        ),
      ),
    ),
  );
}
