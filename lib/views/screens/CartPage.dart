import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import 'package:viva_1/views/utils/list_utils.dart';

class CartPage extends StatefulWidget {
  final Map Sneakers;

  const CartPage({Key? key, required this.Sneakers}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        centerTitle: true,
        backgroundColor: btn,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: h * 0.08,
              width: w,
              color: btn,
              child: const TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Enter Your Location",
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  prefixIcon: Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: h * 0.3,
              width: w,
              decoration: BoxDecoration(
                color: btn,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(
                widget.Sneakers['Image'],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: bg,
    );
  }
}
