import 'package:flutter/material.dart';
import 'package:pr_4_resume_builder_app/views/utils/ColorUtils.dart';
import 'package:pr_4_resume_builder_app/views/utils/ImageUtils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: const Text("Resume Builder"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: BlueColor,
      ),
      body: Column(
        children: [
          Container(
            height: h * 0.1,
            width: w,
            color: BlueColor,
            child: Center(
              child: Text(
                "RESUMES",
                style: TextStyle(
                    color: WhiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: h * 0.1,
              ),
              SizedBox(height: h * 0.1, child: Image.asset(ImagePath + i9)),
              Text(
                "No Resumes + Create new resumes.",
                style: TextStyle(fontSize: 16, color: GreyColor),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('BuildOptionPage');
          },
          backgroundColor: BlueColor,
          child: const Icon(Icons.add)),
    );
  }
}
