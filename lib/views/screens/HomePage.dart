import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/list_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int index = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    String answer = "Quetions[index]['Ans']";
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: IndexedStack(
            alignment: Alignment.center,
            children: Quetions.map(
              (e) => Column(
                children: [
                  Container(
                    height: h * 0.48,
                    width: w,
                    color: Colors.purpleAccent,
                    alignment: Alignment.center,
                    child: Text(Quetions[index]['Quetion']),
                  ),
                  Container(
                    height: h * 0.48,
                    width: w,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed('WinningPage');
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: h * 0.1,
                                  width: w * 0.35,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      Quetions[index]['A'],
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: h * 0.1,
                                width: w * 0.35,
                                color: Colors.white,
                                child: Center(
                                    child: Text(
                                  Quetions[index]['B'],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: h * 0.1,
                                width: w * 0.35,
                                color: Colors.white,
                                child: Center(
                                    child: Text(
                                  Quetions[index]['C'],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: h * 0.1,
                                width: w * 0.35,
                                color: Colors.white,
                                child: Center(
                                    child: Text(
                                  Quetions[index]['D'],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ).toList(),
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            setState(() {
              if (index == 5) {
                index = 0;
              } else {
                index++;
              }
            });
          },
          child: const Icon(CupertinoIcons.plus),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
