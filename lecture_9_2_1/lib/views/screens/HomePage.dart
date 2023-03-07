import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random r = Random();
  int index = 0;
  List<Map> MyColor = List.generate(
    18,
    (index) => {
      'AppBarColor': Colors.primaries[index % 18][200],
      'ContainerColor': Colors.primaries[index % 18][300],
      'ContainerinContainerColor': Colors.primaries[index % 18][400],
      'BtnColor': Colors.primaries[index % 18][500],
      'BtnShadeColor': Colors.primaries[index % 18][600],
    },
  );
  int a = 1;
  int b = 1;
  int c = 1;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lottery App",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                index = (index + 1) % MyColor.length;
              });
            },
            icon: Icon(CupertinoIcons.circle_grid_hex_fill,
                color: Colors.white, size: 26),
          ),
        ],
        centerTitle: true,
        backgroundColor: MyColor[index]['AppBarColor'],
      ),
      body: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Container(
            height: h * 0.3,
            width: w,
            color: MyColor[index]['ContainerColor'],
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  Container(
                    height: h * 0.12,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor[index]['ContainerinContainerColor'],
                    ),
                    child: Center(
                      child: Text(
                        "$a",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: h * 0.12,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor[index]['ContainerinContainerColor'],
                    ),
                    child: Center(
                      child: Text(
                        "$b",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: h * 0.12,
                    width: w * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor[index]['ContainerinContainerColor'],
                    ),
                    child: Center(
                      child: Text(
                        "$c",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Spacer(),
          Spacer(),
          Spacer(),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                MyColor[index]['BtnColor'],
              ),
            ),
            onPressed: () {
              setState(() {
                a = r.nextInt(10);
                b = r.nextInt(10);
                c = r.nextInt(10);
              });
            },
            child: Text(
              "Get Lottery",
              style: TextStyle(color: Colors.black),
            ),
          ),
          Spacer(),
          Spacer(),
          Spacer(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
