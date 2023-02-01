import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("🛍 List of Fruits"),
            backgroundColor: Colors.teal,
            centerTitle: true,
          ),
          body: Center(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "🍎Apple\n",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.red)),
                TextSpan(
                    text: "🍇Greps\n",
                    style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 5,
                        color: Colors.deepPurple)),
                TextSpan(
                    text: "🍒Cherry\n",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.purple)),
                TextSpan(
                    text: "🍓Strawberry\n",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.pink)),
                TextSpan(
                    text: "🥭Mango\n",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.orange)),
                TextSpan(
                    text: "🍍Pineapple\n",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.green)),
                TextSpan(
                    text: "🍋Lemon\n",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.yellow)),
                TextSpan(
                    text: "🍉Watermelon\n",
                    style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 5,
                        color: Colors.lightGreen)),
                TextSpan(
                    text: "🥥Coconut",
                    style: TextStyle(
                        fontSize: 30, letterSpacing: 5, color: Colors.brown)),
              ]),
            ),
          ),
        )),
  );
}
