import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gradient Button"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Align(
          child: Container(
            height: 60,
            width: 180,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.shade400,
                    Colors.purple.shade500,
                    Colors.blueAccent.shade700,
                    Colors.lightBlueAccent,
                  ],
                  stops: [0.1, 0.2, 0.6, 1],
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.white,
                  ),
                ]),
            alignment: Alignment.center,
            child: const Text(
              "Flutter",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
    ),
  );
}
