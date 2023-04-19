import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';
import '../../utils/GlobalVariable.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
        child: const Icon(CupertinoIcons.back),
      ),
      elevation: 0,
      backgroundColor: BlueColor,
      centerTitle: true,
      title: Text("Projects"),
      toolbarHeight: h * 0.2,
    ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          height: h * 0.7,
          width: w,
          decoration: BoxDecoration(
              color: WhiteColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 2,
                    color: Colors.grey.shade300),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Project Title",
                      style: TextStyle(
                          color: BlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter Project Title.";
                      }
                      return null;
                    },
                    onSaved: (val) {
                      ProjectTitle = val;
                    },
                    decoration: InputDecoration(
                      hintText: 'Resume Builder App',
                      hintStyle: TextStyle(
                        color: GreyColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Technologies",
                      style: TextStyle(
                          color: BlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  CheckboxListTile(value: CLAN, onChanged: (val) {
                    setState(() {
                      CLAN = val!;
                    });
                  },title: Text("C Programming"),controlAffinity: ListTileControlAffinity.leading,),CheckboxListTile(value: CPP, onChanged: (val) {
                    setState(() {
                      CPP = val!;
                    });
                  },title: Text("C++"),controlAffinity: ListTileControlAffinity.leading,),CheckboxListTile(value: Flutter, onChanged: (val) {
                    setState(() {
                      Flutter = val!;
                    });
                  },title: Text("Flutter"),controlAffinity: ListTileControlAffinity.leading,),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Roles",
                      style: TextStyle(
                          color: BlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Organize team ",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: GreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: BlueColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03,),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Technologies",
                      style: TextStyle(
                          color: BlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "5 Programmers",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: GreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: BlueColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03,),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Project Description",
                      style: TextStyle(
                          color: BlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Project Description",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: GreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: BlueColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.03,),
                  GestureDetector(onTap: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                    child: Container(
                      height: h *0.08,
                      width: w * 0.5,
                      color: BlueColor,
                      child: Center(child: Text("SAVE",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: BGColor,
    );
  }
}
