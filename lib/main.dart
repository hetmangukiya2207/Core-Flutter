import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    ),
  );
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late double w;
  @override
  void initState() {
    super.initState();
    w = 80;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open-Close Doors"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Center(
        child: Ink(
          child: InkWell(
            onTap: () {
              setState(() {
                if (w < 90) {
                  w += 30;
                }
              });
            },
            onDoubleTap: () {
              setState(() {
                if (w > 60) {
                  w -= 30;
                }
              });
            },
            child: Container(
              height: 350,
              width: 260,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.grey,
                    width: w,
                  ),
                  horizontal: const BorderSide(
                    color: Colors.black,
                    width: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
