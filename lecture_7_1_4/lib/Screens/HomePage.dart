import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Color? ContainerColor;
  List Con = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    int i = 0;
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dynamic List",
          style: TextStyle(
            fontSize: h * 0.03,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff203A43),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: Con.map((e) {
            if (i % 2 == 1) {
              ContainerColor = Colors.blue;
            } else {
              ContainerColor = Colors.lightBlueAccent;
            }
            i++;
            return Container(
              alignment: Alignment.center,
              height: h * 0.1,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: ContainerColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                "${i}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                i++;
                Con.add(i);
              });
            },
            child: Container(
              height: h * 0.08,
              width: h * 0.08,
              decoration: const BoxDecoration(
                color: Color(0xff203A43),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                i--;
                Con.remove(i);
              });
            },
            child: Container(
              // alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              height: h * 0.08,
              width: h * 0.08,
              decoration: const BoxDecoration(
                color: Color(0xff203A43),
                shape: BoxShape.circle,
              ),
              // child: Text("-",style: TextStyle(
              //   fontSize: 50,
              //   color: Colors.white,
              // ),
              // ),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
