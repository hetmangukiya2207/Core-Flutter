import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dark Shadow Button"),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 05,
                    blurRadius: 10,
                    color: Colors.redAccent,
                  ),
                ]),
            alignment: Alignment.center,
            child: const Text(
              "Tap",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
