import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        leading: const Icon(Icons.menu),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('settingPage');
                });
              },
              child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(CupertinoIcons.settings)))
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
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
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: h * 0.05,
                  width: w * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                  ),
                  child: const TextField(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      icon: Icon(CupertinoIcons.search),
                      hintText: ("Search"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: h * 0.05,
                  width: w * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Icon(Icons.filter_list_outlined,
                      color: Colors.black, size: 26),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pushNamed('SneakersPage');
                    });
                  },
                  child: Container(
                    height: h * 0.05,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
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
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: h * 0.05,
                  width: w * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
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
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: h * 0.05,
                  width: w * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
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
              ),
            ],
          ),
          Text(
            "Recommended",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
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
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            width: w * 0.3,
                            height: h * 0.3,
                            child: Image.network(ImagePath + i1)),
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
                              color: Colors.orange),
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
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            width: w * 0.3,
                            height: h * 0.3,
                            child: Image.network(ImagePath + i2)),
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
                              fontWeight: FontWeight.normal,
                              color: Colors.orange),
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
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    height: h * 0.45,
                    width: w * 0.6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            width: w * 0.3,
                            height: h * 0.3,
                            child: Image.network(ImagePath + i3)),
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
                              color: Colors.orange),
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
          const Spacer(),
          Container(
            height: h * 0.07,
            width: w,
            color: Colors.black,
            child: Row(
              children: const [
                Spacer(),
                Center(
                  child: Icon(
                    CupertinoIcons.home,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Center(
                  child: Icon(
                    CupertinoIcons.search,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Center(
                  child: Icon(
                    CupertinoIcons.cart,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Center(
                  child: Icon(
                    CupertinoIcons.profile_circled,
                    size: 34,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
