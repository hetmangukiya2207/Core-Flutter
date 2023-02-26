import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  final Map data;

  const Page1({Key? key, required this.data}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "About",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      height: h * 0.15,
                      width: h * 0.15,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(widget.data['CaptainImage']),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                            child: Text(
                          widget.data['CaptainName'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              height: 2),
                        )),
                        Container(
                          child: Text(
                            widget.data['Captain'],
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                height: 2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Team Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: h * 0.15,
                              width: h * 0.15,
                              child: Image.asset(widget.data['TeamImage']),
                            ),
                            Text(
                              widget.data['TeamName'],
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    const Text(
                      "Team Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      widget.data['Description'],
                      style: TextStyle(fontSize: 20, height: 3),
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
