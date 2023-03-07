import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController t1 = TextEditingController();
  int otpLength = 0;
  List rndOTPnumberList = [];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "OTP Generator",
          style: TextStyle(
            fontSize: 30,
            color: Color(0xffF6DB87),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff15172B),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            SizedBox(
              height: h * 0.1,
              width: w * 0.7,
              child: TextField(
                maxLength: 1,
                controller: t1,
                style: const TextStyle(
                  color: Color(0xffFCF6Ba),
                  fontSize: 18,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter OTP Length",
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Color(0xffFCF6Ba),
                  )),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                String tx = t1.text;
                otpLength = int.parse(tx);
                rndOTPnumberList.clear();
                setState(() {
                  for (int i = 0; i < otpLength; i++) {
                    Random rnd = Random();
                    int rndNo = rnd.nextInt(9);
                    rndOTPnumberList.add(rndNo);
                  }
                });
              },
              child: Container(
                height: h * 0.08,
                width: w * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Generate OTP",
                  style: TextStyle(fontSize: 30, color: Color(0xff15172B)),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: h * 0.1,
              width: w * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFE8B8),
                    Color(0xffF6DB87),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "${rndOTPnumberList}",
                style: TextStyle(fontSize: 30, color: Color(0xff15172B)),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  t1.clear();
                  rndOTPnumberList = [];
                  ;
                });
              },
              child: Container(
                height: h * 0.06,
                width: w * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 30, color: Color(0xff15172B)),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      backgroundColor: Color(0xff15172B),
    );
  }
}
