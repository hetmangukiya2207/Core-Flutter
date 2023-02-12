import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  IconData MyIcon = Icons.person;
  Color MyColor = Colors.blue;
  List MyI = [
    const Icon(
      Icons.alarm,
      size: 50,
    ),
    const Icon(
      Icons.gamepad,
      size: 50,
    ),
    const Icon(
      Icons.close,
      size: 50,
    ),
    const Icon(
      Icons.save,
      size: 50,
    ),
    const Icon(
      Icons.call,
      size: 50,
    ),
    const Icon(
      Icons.add,
      size: 50,
    ),
    const Icon(
      Icons.search,
      size: 50,
    ),
    const Icon(
      Icons.menu,
      size: 50,
    ),
    const Icon(
      Icons.keyboard_return_outlined,
      size: 50,
    ),
    const Icon(
      Icons.security_update_good_rounded,
      size: 50,
    ),
    const Icon(
      Icons.nordic_walking,
      size: 50,
    ),
    const Icon(
      Icons.school_outlined,
      size: 50,
    ),
    const Icon(
      Icons.local_hospital,
      size: 50,
    ),
    const Icon(
      Icons.local_police,
      size: 50,
    ),
    const Icon(
      Icons.warning,
      size: 50,
    ),
    const Icon(
      Icons.broadcast_on_personal_rounded,
      size: 50,
    ),
    const Icon(
      Icons.not_interested,
      size: 50,
    ),
  ];
  List Colour = List.generate(18, (i) => i++);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Icons Editor",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white30,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 20,
              child: Container(
                alignment: Alignment.center,
                height: h * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Icon(
                  MyIcon,
                  color: MyColor,
                  size: 200,
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                height: h * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: const Text(
                  "Select Color",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 10,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: Colour.map((e) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            MyColor = Colors.primaries[e];
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 0.2,
                          width: h * 0.2,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.primaries[e],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                height: h * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: const Text(
                  "Select Icon",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 10,
              child: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.center,
                height: h * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: MyI.map((e) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            MyIcon = e.icon;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 0.2,
                          width: w * 0.4,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: e,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
