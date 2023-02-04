import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("An Indian Flag"),
          backgroundColor: Colors.blueAccent.shade400,
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: 150,
            width: 220,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.white,
                    Colors.white,
                    Colors.green,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.4, 0.5, 0.7],
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.white,
                  ),
                ]),
            alignment: Alignment.center,
            child: const Text(
              "*",
              style: TextStyle(color: Colors.indigo, fontSize: 50),
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent.shade400,
      ),
    ),
  );
}
