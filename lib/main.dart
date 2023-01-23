import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Text(
            "Red & White Groups Of Institute\nOne Stap In Changing Education Chain...",
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
      ),
    ),
  );
}
