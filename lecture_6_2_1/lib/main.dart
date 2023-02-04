import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Launch Button"),
          backgroundColor: Colors.green.shade400,
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 10,
                    blurRadius: 10,
                    color: Colors.green.shade900,
                  ),
                ]),
            alignment: Alignment.center,
            child: const Text(
              "GO",
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
