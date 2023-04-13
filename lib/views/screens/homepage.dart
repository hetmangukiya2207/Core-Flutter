import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Column(
        children: [
          IndexedStack(
            index: Global.firstQuestion,
            children: Global.questions.map((e) {
              return Column(
                children: [
                  Container(
                    height: h * 0.48,
                    color: Colors.lightGreen,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      e['Qustion'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (Global.firstQuestion == e['id']) {
                                if (e['ans'] == e['options1']) {
                                  Navigator.of(context).pushNamed('winner_page',
                                      arguments: e['winning']);
                                } else {
                                  Navigator.of(context).pushNamed(
                                    'lose_page',
                                  );
                                }
                              }
                              if (Global.firstQuestion <
                                  Global.questions.length - 1) {
                                Global.firstQuestion++;
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            height: h * 0.06,
                            width: double.infinity,
                            child: Text(
                              e['options1'],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (Global.firstQuestion == e['id']) {
                                if (e['ans'] == e['options2']) {
                                  Navigator.of(context).pushNamed('winner_page',
                                      arguments: e['winning']);
                                } else {
                                  Navigator.of(context).pushNamed(
                                    'lose_page',
                                  );
                                }
                              }
                              if (Global.firstQuestion <
                                  Global.questions.length - 1) {
                                Global.firstQuestion++;
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            height: h * 0.06,
                            width: double.infinity,
                            child: Text(
                              e['options2'],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (Global.firstQuestion == e['id']) {
                                if (e['ans'] == e['options3']) {
                                  Navigator.of(context).pushNamed('winner_page',
                                      arguments: e['winning']);
                                } else {
                                  Navigator.of(context).pushNamed(
                                    'lose_page',
                                  );
                                }
                              }
                              if (Global.firstQuestion <
                                  Global.questions.length - 1) {
                                Global.firstQuestion++;
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            height: h * 0.06,
                            width: double.infinity,
                            child: Text(
                              e['options3'],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (Global.firstQuestion == e['id']) {
                                if (e['ans'] == e['options4']) {
                                  Navigator.of(context).pushNamed('winner_page',
                                      arguments: e['winning']);
                                } else {
                                  Navigator.of(context).pushNamed(
                                    'lose_page',
                                  );
                                }
                              }
                              if (Global.firstQuestion <
                                  Global.questions.length - 1) {
                                Global.firstQuestion++;
                              }
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(10),
                            height: h * 0.06,
                            width: double.infinity,
                            child: Text(
                              e['options4'],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
