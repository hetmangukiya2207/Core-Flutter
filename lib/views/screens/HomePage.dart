import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color activeColor = Colors.green;
  double sliderVal = 0;

  List myValues = [
    {
      'title': "Loan Amount",
      'min': 10000.0,
      'max': 1000000.0,
      'value': 10000.0,
      'lable': '₹',
    },
    {
      'title': "Interest Rate",
      'min': 6.0,
      'max': 20.0,
      'value': 6.0,
      'lable': '%',
    },
    {
      'title': "Loan Tenture",
      'min': 6.0,
      'max': 120.0,
      'value': 6.0,
      'lable': 'Months',
    },
  ];
  double emi = 0.00;
  double A = 0.00;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff20295C),
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.grid_view_outlined),
        title: const Text(
          "EMI Calculator",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: h,
              width: w,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff20295C),
                    Color(0xff0F2027),
                  ],
                  stops: [0.2, 0.4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "${A.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    "\n\\ Months",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.7,
              width: w,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: myValues
                      .map(
                        (e) => mySliderBox(
                          title: e['title'],
                          lable: e['lable'],
                          min: e['min'].toDouble(),
                          max: e['max'].toDouble(),
                          index: myValues.indexOf(e),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              double loanAmount = myValues[0]['value'];
              double interestRate = myValues[1]['value'] / 1200;
              int loanTenure = myValues[2]['value'].toInt();
              emi = (loanAmount *
                      interestRate *
                      pow(1 + interestRate, loanTenure)) /
                  (pow(1 + interestRate, loanTenure) - 1);

              setState(() {
                A = emi;
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 150,
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xff2C3568),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mySliderBox({
    required String title,
    required String lable,
    required double min,
    required double max,
    required int index,
  }) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE5E6E8),
                ),
              ),
              Text(
                "${myValues[index]['value'].toInt().toString()}$lable",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Slider(
            min: min,
            max: max,
            value: myValues[index]['value'].toDouble(),
            onChanged: (val) {
              setState(() {
                myValues[index]['value'] = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
