import 'package:flutter/material.dart';
import 'package:lecture_10_1/views/screens/Page_1.dart';

import '../../utils/image_utils.dart';
import '../../utils/list_utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Cricket Teams",
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: data
                .map(
                  (e) => Card(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Page1(data: e),
                            ),
                          );
                        });
                      },
                      child: Column(
                        children: [
                          ListTile(
                            leading: SizedBox(
                              width: h * 0.1,
                              child: Image.asset(e['TeamImage']),
                            ),
                            trailing: SizedBox(
                              height: h * 0.2,
                              width: h * 0.1,
                              child: Image.asset(e['CaptainImage']),
                            ),
                            title: Text(e['TeamName']),
                            subtitle: Text(e['CaptainName']),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
