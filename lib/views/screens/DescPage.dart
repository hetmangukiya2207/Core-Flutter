import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_utils.dart';

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
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: btn,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: btn),
                child: SizedBox(
                  height: h * 0.3,
                  width: w * 0.3,
                  child: Image.asset(widget.Sneakers['Image']),
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: h * 0.55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: btn,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.Sneakers['Name'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.Sneakers['Price'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: const [
                      Text(
                        "Colors",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 22),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      const Text(
                        "Select Size",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 22),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "11",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                              child: CircleAvatar(
                                backgroundColor: Color(0xff609966),
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('CartPage');
                      });
                    },
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff609966),
                      ),
                      child: Center(
                        child: const Text(
                          "Add To Buy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: bg,
    );
  }
}
