import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("A Shadow Button"),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: 70,
            width: 180,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 05,
                    blurRadius: 10,
                    color: Colors.teal,
                  ),
                ]),
            alignment: Alignment.center,
            child: const Text(
              "Tap",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}
