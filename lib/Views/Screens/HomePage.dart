import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stack App",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(45),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(60),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(75),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(90),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(105),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(120),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
