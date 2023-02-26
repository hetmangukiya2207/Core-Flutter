import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int A = 1;
  int B = 2;
  int C = 3;
  int D = 4;
  int E = 5;
  int F = 6;
  int G = 7;
  int H = 8;
  int I = 9;
  int J = 0;
  int K = 00;

  int firstVal = 0;
  int secondVal = 0;
  String Symbol = "";

  String P = "+";
  String Q = "-";
  String R = "*";
  String S = "/";
  String T = "%";

  String x = ".";

  String ans = "";
  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 100,
                width: 400,
                color: Color(0xff2E2D32),
                alignment: Alignment.bottomRight,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "   $ans",
                        style: const TextStyle(
                          color: Color(0xff8D8D8D),
                          fontSize: 30,
                        ),
                      ),
                      TextSpan(
                        text: "\n\n $total  ",
                        style: const TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              "-----------------------------------------------------------------------------------------------------,",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: const Color(0xff2E2D32),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = "";
                                total = 0;
                                firstVal = 0;
                                secondVal = 0;
                                Symbol = "";
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF5A66),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "AC",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (T).toString();
                                Symbol = T;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "%",
                                style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (S).toString();
                                Symbol = S;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "/",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (G).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + G;
                                } else {
                                  secondVal = (secondVal * 10) + G;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "$G",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (H).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + H;
                                } else {
                                  secondVal = (secondVal * 10) + H;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$H",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (I).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + I;
                                } else {
                                  secondVal = (secondVal * 10) + I;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "$I",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (R).toString();
                                Symbol = R;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "*",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (D).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + D;
                                } else {
                                  secondVal = (secondVal * 10) + D;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "$D",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (E).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + E;
                                } else {
                                  secondVal = (secondVal * 10) + E;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$E",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (F).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + F;
                                } else {
                                  secondVal = (secondVal * 10) + F;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "$F",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (G).toString();
                                Symbol = Q;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (A).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + A;
                                } else {
                                  secondVal = (secondVal * 10) + A;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "$A",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (B).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + B;
                                } else {
                                  secondVal = (secondVal * 10) + B;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$B",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (C).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + C;
                                } else {
                                  secondVal = (secondVal * 10) + C;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "$C",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (P).toString();
                                Symbol = P;
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  color: Color(0xffFF5A66),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (K).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + K;
                                } else {
                                  secondVal = (secondVal * 10) + K;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                "00",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (J).toString();
                                if (Symbol == "+" ||
                                    Symbol == "-" ||
                                    Symbol == "*" ||
                                    Symbol == "/" ||
                                    Symbol == "%") {
                                  firstVal = (firstVal * 10) + J;
                                } else {
                                  secondVal = (secondVal * 10) + J;
                                }
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "$J",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                ans = ans + (x).toString();
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                ".",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (Symbol == "+") {
                                  total = firstVal + secondVal;
                                } else if (Symbol == "-") {
                                  total = secondVal - firstVal;
                                } else if (Symbol == "*") {
                                  total = firstVal * secondVal;
                                } else if (Symbol == "/") {
                                  total = secondVal ~/ firstVal;
                                } else if (Symbol == "%") {
                                  total = firstVal % secondVal;
                                } else {
                                  total = 0;
                                }
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: const Color(0xffFF5A66),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "=",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff2E2D32),
    );
  }
}
