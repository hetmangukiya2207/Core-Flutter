import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mission of RNW"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          child: Container(
            height: 80,
            width: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red.shade200,
              border: Border(
                left: BorderSide(
                  color: Colors.red,
                  width: 10,
                ),
              ),
            ),
            child: const Text(
              "Shaping 'skills' for 'scalling' higher\n-RNW",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
