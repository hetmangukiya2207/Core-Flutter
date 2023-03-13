import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viva_1/views/utils/color_utils.dart';

import '../utils/image_utils.dart';

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
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('settingPage');
              });
            },
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
            ),
          ),
        ],
        title: Text(
          "HR's Store",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff465940),
      ),
      body: Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Our",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
            const Text(
              "Products",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: h * 0.05,
                    width: w * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: top,
                    ),
                    child: const TextField(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabled: false,
                        icon: Icon(CupertinoIcons.search),
                        hintText: ("Search"),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: h * 0.05,
                  width: w * 0.1,
                  decoration: BoxDecoration(
                    color: top,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.filter_list_outlined,
                      color: Colors.black, size: 26),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('SneakersPage');
                      });
                    },
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.25,
                      decoration: BoxDecoration(
                        color: top,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Sneakers",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: h * 0.05,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      color: top,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Watch",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: h * 0.05,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      color: top,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Jacket",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              "Recommended",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: h * 0.45,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: btn,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              width: w * 0.3,
                              height: h * 0.3,
                              child: Image.asset(ImagePath + i1)),
                          const Text(
                            "NIKE AIR MAX 200",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          const Text(
                            "Tranding Now",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          const Text(
                            "₹240.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: h * 0.45,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: top,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              width: w * 0.3,
                              height: h * 0.3,
                              child: Image.asset(ImagePath + i2)),
                          const Text(
                            "NIKE AIR MAX 450",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          const Text(
                            "Best Selling",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const Text(
                            "₹780.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6),
                    child: Container(
                      height: h * 0.45,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: btn,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              width: w * 0.3,
                              height: h * 0.3,
                              child: Image.asset(ImagePath + i3)),
                          const Text(
                            "NIKE AIR MAX 97",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          const Text(
                            "Best Selling",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                          const Text(
                            "₹560.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: top,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: top,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: h * 0.05,
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: bg,
    );
  }
}
