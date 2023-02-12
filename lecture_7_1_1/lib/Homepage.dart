import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late int a;

  late int b;

  @override
  void initState() {
    super.initState();
    a = 0;
    b = 0;
  }

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calc"),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Container(
          height: h * 0.5,
          width: w * 0.8,
          color: Colors.white,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Ink(
                  child: InkWell(
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$a",
                        style: const TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "-2",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            a -= 2;
                          });

                          // a--;
                          // a--;
                        },
                      ),
                    ),
                    Ink(
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "+2",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            a += 2;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "-4",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            a -= 4;
                          });

                          // a--;
                          // a--;
                        },
                      ),
                    ),
                    Ink(
                      child: InkWell(
                        child: Container(
                          height: 50,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: Colors.blue,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "+4",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            a += 4;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Ink(
                  child: InkWell(
                    child: Container(
                      height: 50,
                      width: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: Colors.blue,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Clear",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        a = b;
                      });
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
