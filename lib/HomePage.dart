import 'package:flutter/material.dart';

import 'Colors.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  DateTime CurrentDate = DateTime.now();

  String? birthday;
  String? birthmonth;
  String? birthyear;

  int? currentyear;
  int? currentmonth;
  int? currentday;

  int? nextbm;
  int? nextbd;

  TextEditingController daycontroller = TextEditingController();
  TextEditingController monthcontroller = TextEditingController();
  TextEditingController yearcontroller = TextEditingController();
  TextEditingController nextbmcontroller = TextEditingController();
  TextEditingController nextbdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppbarColor,
        centerTitle: true,
        title: const Text(
          "Age Calculator",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO today date
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today's Date",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabled: false,
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                        ),
                        hintText:
                            "${CurrentDate.day}/${CurrentDate.month}/${CurrentDate.year}",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: LivedatetextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(
                flex: 1,
              ),
              //TODO MM DD YYYY
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Date of Birth",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: TextField(
                            controller: daycontroller,
                            textAlign: TextAlign.center,
                            onChanged: (val) => birthday = val,
                            decoration: InputDecoration(
                              hintText: "DD",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppbarColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            controller: monthcontroller,
                            textAlign: TextAlign.center,
                            onChanged: (val) => birthmonth = val,
                            decoration: InputDecoration(
                              hintText: "MM",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppbarColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            controller: yearcontroller,
                            textAlign: TextAlign.center,
                            onChanged: (val) => birthyear = val,
                            decoration: InputDecoration(
                              hintText: "YYYY",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppbarColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Spacer(),
              //TODO Clear & Calculate Button
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 20,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            setState(() {
                              daycontroller.clear();
                              monthcontroller.clear();
                              yearcontroller.clear();

                              birthday = null;
                              birthmonth = null;
                              birthyear = null;

                              currentday = null;
                              currentmonth = null;
                              currentyear = null;
                              nextbm = null;
                              nextbd = null;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "CLEAR",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: CalbuttonColor, width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 20,
                      child: Ink(
                        decoration: BoxDecoration(
                          color: CalbuttonColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            setState(() {
                              if ((int.parse(birthday!)) > CurrentDate.day) {
                                if ((int.parse(birthmonth!)) <
                                    CurrentDate.month) {
                                  currentday = 30 -
                                      ((int.parse(birthday!)) -
                                          CurrentDate.day);
                                  currentmonth = (CurrentDate.month -
                                          (int.parse(birthmonth!))) -
                                      1;
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)));
                                  nextbm = 12 - (CurrentDate.month - 1);
                                  nextbd = 30 -
                                      (30 -
                                          ((int.parse(birthday!)) -
                                              CurrentDate.day));
                                } else if ((int.parse(birthmonth!)) >
                                    CurrentDate.month) {
                                  currentday = 30 -
                                      ((int.parse(birthday!)) -
                                          CurrentDate.day);
                                  currentmonth = (12 -
                                      ((int.parse(birthmonth!))) +
                                      (CurrentDate.month - 1));
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)) -
                                      1);
                                  nextbm = 12 -
                                      (12 -
                                          ((int.parse(birthmonth!))) +
                                          (CurrentDate.month - 1) +
                                          1);
                                  nextbd = 30 -
                                      (30 -
                                          ((int.parse(birthday!)) -
                                              CurrentDate.day));
                                } else if ((int.parse(birthmonth!)) ==
                                    CurrentDate.month) {
                                  currentday =
                                      (int.parse(birthday!)) - CurrentDate.day;
                                  currentmonth = 00;
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)));
                                  nextbd = 30 -
                                      ((int.parse(birthday!)) -
                                          CurrentDate.day);
                                  nextbm = 11;
                                }
                              } else if (((int.parse(birthday!)) <
                                  CurrentDate.day)) {
                                if ((int.parse(birthmonth!)) <
                                    CurrentDate.month) {
                                  currentday = (CurrentDate.day -
                                      (int.parse(birthday!)));
                                  currentmonth = (CurrentDate.month -
                                      (int.parse(birthmonth!)));
                                  currentyear = CurrentDate.year -
                                      (int.parse(birthyear!));
                                  nextbm = 12 -
                                      (((CurrentDate.month -
                                              (int.parse(birthmonth!)))) +
                                          1);
                                  nextbd = 30 -
                                      (CurrentDate.day -
                                          (int.parse(birthday!)));
                                } else if ((int.parse(birthmonth!)) >
                                    CurrentDate.month) {
                                  currentday =
                                      CurrentDate.day - (int.parse(birthday!));
                                  currentmonth = (12 -
                                      ((int.parse(birthmonth!))) +
                                      (CurrentDate.month - 1));
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)) -
                                      1);
                                  nextbd = 30 -
                                      (CurrentDate.day -
                                          (int.parse(birthday!)));
                                  nextbm = 12 -
                                      (((12 -
                                              ((int.parse(birthmonth!))) +
                                              (CurrentDate.month - 1)) +
                                          1));
                                } else if ((int.parse(birthmonth!)) ==
                                    CurrentDate.month) {
                                  currentday =
                                      CurrentDate.day - (int.parse(birthday!));
                                  currentmonth = 00;
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)));
                                  nextbm = 11;
                                  nextbd = 30 -
                                      (CurrentDate.day -
                                          (int.parse(birthday!)));
                                }
                              } else if (((int.parse(birthday!)) ==
                                  CurrentDate.day)) {
                                if ((int.parse(birthmonth!)) <
                                    CurrentDate.month) {
                                  currentday = 00;
                                  currentmonth = (CurrentDate.month -
                                      (int.parse(birthmonth!)));
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)));
                                  nextbd = 00;
                                  nextbm = 12 -
                                      ((CurrentDate.month -
                                          (int.parse(birthmonth!))));
                                } else if ((int.parse(birthmonth!)) >
                                    CurrentDate.month) {
                                  currentday = 00;
                                  currentmonth = (12 -
                                      ((int.parse(birthmonth!))) +
                                      (CurrentDate.month - 1));
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)) -
                                      1);
                                  nextbd = 00;
                                  nextbm = 12 -
                                      ((12 -
                                          ((int.parse(birthmonth!))) +
                                          (CurrentDate.month - 1)));
                                } else if ((int.parse(birthmonth!)) ==
                                    CurrentDate.month) {
                                  currentday = 00;
                                  currentmonth = 00;
                                  currentyear = (CurrentDate.year -
                                      (int.parse(birthyear!)));
                                  nextbm = 12;
                                  nextbd = 00;
                                }
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "CALCULATE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // TODO show age
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Preaent age",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: h * 0.14,
                      width: w * 0.9,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            gradientup,
                            gradientdown,
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${currentyear ?? "00"}",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Year",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${currentmonth ?? "00"}",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Month",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${currentday ?? "00"}",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Days",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // TODO show next birthday
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Birthday",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: h * 0.14,
                      width: w * 0.9,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [gradientb, gardienta],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${nextbm ?? "00"}",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Month",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${nextbd ?? "00"}",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Days",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
