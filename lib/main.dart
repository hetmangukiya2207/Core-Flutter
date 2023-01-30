import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "Flutter App",
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: Center(
            child: Text(
          "Red & White",
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.double,
            decorationColor: Colors.yellow,
            fontSize: 40,
            color: Colors.red,
          ),
        )),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
