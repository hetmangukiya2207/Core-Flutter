import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "THE WALL",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.15,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.2,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.15,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.2,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.10,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.2,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.25,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.155,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.14,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.155,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.25,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.155,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.14,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.155,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.25,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.1,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * 0.1,
                width: w * 0.155,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.14,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.155,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
