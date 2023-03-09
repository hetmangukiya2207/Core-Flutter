import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescPage extends StatefulWidget {
  final Map Sneakers;

  const DescPage({Key? key, required this.Sneakers}) : super(key: key);

  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Description",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.orange)),
                child: SizedBox(
                  height: h * 0.3,
                  width: w * 0.3,
                  child: Image.asset(widget.Sneakers['Image']),
                ),
              ),
            ),
            Container(
              height: h * 0.2,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
                // border: Border.all(color: Colors.orange)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.Sneakers['ItemName'],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    widget.Sneakers['Name'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: h * 0.2,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
                // border: Border.all(color: Colors.orange)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.Sneakers['Selling'],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    widget.Sneakers['Price'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: h * 0.1,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.orange)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26),
                    ),
                    Icon(CupertinoIcons.cart, size: 26),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
