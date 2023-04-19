import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_4_resume_builder_app/views/utils/BuildOptionListUtils.dart';
import 'package:pr_4_resume_builder_app/views/utils/ColorUtils.dart';

class BuildOptionPage extends StatefulWidget {
  const BuildOptionPage({Key? key}) : super(key: key);

  @override
  State<BuildOptionPage> createState() => _BuildOptionPageState();
}

class _BuildOptionPageState extends State<BuildOptionPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios)),
        elevation: 0,
        backgroundColor: BlueColor,
        title: Column(
          children: [
            Text("Resume Workspace"),
            SizedBox(
              height: h * 0.07,
            ),
            Text("Build Option"),
          ],
        ),
        centerTitle: true,
        toolbarHeight: h * 0.2,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: BuildOption.map(
            (e) => Card(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Image.asset(
                      e['Icon'],
                      height: 35,
                    ),
                    SizedBox(
                      width: w * 0.05,
                    ),
                    Text(e['Title']),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(e['Routes']);
                        },
                        icon: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
