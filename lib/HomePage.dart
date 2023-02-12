import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int i = 0;
  int time = 0;
  List<Map> timeList = [];

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: const [
          Icon(Icons.date_range_outlined),
          SizedBox(
            width: 10,
          ),
        ],
        title: const Text(
          "To-Do App",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              i,
              (index) => Container(
                height: h * 0.09,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: const EdgeInsets.only(bottom: 10),
                      height: h * 0.07,
                      width: w * 0.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black87,
                        ),
                      ),
                      child: Text(
                        "${timeList[index]['time']}:00\n${timeList[index]['status']}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(7),
                          height: h * 0.09,
                          width: w * 0.35,
                          child: const TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "Enter your TO-Do here...",
                              border: OutlineInputBorder(),
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
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            timeList.add({
              "time": (i + 9 <= 12) ? i + 9 : (i + 9) - 12,
              'status': (i + 9 < 12) ? "AM" : "PM",
            });
            i++;
          });
        },
        child: Container(
          height: h * 0.08,
          width: h * 0.08,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
