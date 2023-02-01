import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Red & White"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "            G",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "   FLUTT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "R\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "          AN",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "ROID\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "DESIGN",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: " & ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "DEVELOP\n",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "            W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "EB\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "        FAS",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "ION\n",
                  style: TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 25,
                  ),
                ),
                TextSpan(
                  text: " ANIMAT",
                  style: TextStyle(
                    color: Colors.green.shade700,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                TextSpan(
                  text: "ON\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "              I",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
                const TextSpan(
                  text: "A-CS+\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                const TextSpan(
                  text: "      GAM",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    height: 2,
                  ),
                ),
                const TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
      )));
}
