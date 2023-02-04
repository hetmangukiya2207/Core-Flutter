import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xffb9ff4a),
              border: Border.all(
                width: 15,
                color: Colors.green.shade400,
              ),
            ),
            child: Align(
              child: Text(
                "OOOO",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 80,
                  letterSpacing: -25,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
    ),
  );
}
