import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Watch"),
          centerTitle: false,
          backgroundColor: const Color(0xff231955),
        ),
        body: Align(
          child: Align(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xff231955),
                    Color(0xff1F4690),
                    Color(0xff1F4690),
                    Color(0xff47B5FF),
                  ],
                  stops: [0, 0.4, 0.7, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Container(
                height: 50,
                width: 180,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 2,
                      color: Colors.white,
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff2C74B3),
                      Color(0xff205295),
                    ],
                  ),
                ),
                child: const Text(
                  "Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
