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
        title: const Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.message_outlined),
          ),
        ],
        backgroundColor: Colors.black,
        elevation: 5,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s1),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s2),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s3),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s4),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s5),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s6),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s7),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s8),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s9),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s10),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s11),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.25,
                    width: w * 0.25,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(imagePath + s12),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Text(
                    "Posts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p1),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p2),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p3),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p4),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p5),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p6),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p7),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p8),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p9),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(imagePath + p10),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
