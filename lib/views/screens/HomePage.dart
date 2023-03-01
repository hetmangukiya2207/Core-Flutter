import 'package:flutter/material.dart';

import '../../utils/colors_utils.dart';
import '../../utils/images_utils.dart';
import '../../utils/list_utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

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
        centerTitle: true,
        backgroundColor: Color(0xff10002b),
        title: const Text(
          "Gujarati Actor",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment(-0.7, 0),
              color: bg,
              height: h * 0.1,
              child: Text(
                "Actors",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Data.map(
                  (e) => Stack(
                    children: [
                      Container(
                        height: h * 0.7,
                        width: w * 0.7,
                        color: bg,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: h * 0.5,
                              width: w * 0.6,
                              child: Positioned(
                                //top: 10,
                                left: 20,
                                bottom: 100,

                                child: Container(
                                  alignment: const Alignment(0, -5),
                                  margin: EdgeInsets.all(15),
                                  width: w * 0.2,
                                  height: h * 0.4,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Color(0xff10002b),
                                    borderRadius: BorderRadius.circular(25),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black,
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                      )
                                    ],
                                  ),
                                  child: SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: Image.asset(e['TeamImage']),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 220,
                        child: Text(
                          e['CharName'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 250,
                        child: Text(
                          e['OriginalName'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8b7f95),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 300,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('page1', arguments: e);
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => desPage(data: e,)),);
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            alignment: Alignment.center,
                            child: const Text(
                              "Know More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ).toList(),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: bg,
    );
  }
}
