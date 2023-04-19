import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';
import '../../utils/Variables.dart';
import '../../utils/GlobalVariable.dart';

class EducationPagePage extends StatefulWidget {
  const EducationPagePage({Key? key}) : super(key: key);

  @override
  State<EducationPagePage> createState() => _EducationPagePageState();
}

class _EducationPagePageState extends State<EducationPagePage> {
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
        title: const Text("Education"),
        toolbarHeight: h * 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key:  EducationFormKey,
          child: Container(
            padding: const EdgeInsets.all(16),
            color: BGColor,
            width: double.infinity,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    height: h * 0.6,
                    decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "Course/Degree",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Course/Degree";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Course = val;
                            },
                            decoration: InputDecoration(
                              hintText: "B.Tech Information Technology",
                              hintStyle: TextStyle(
                                color: GreyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "School/Collage/Institute",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter School/Collage/Institute";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              School = val;
                            },
                            decoration: InputDecoration(
                              hintText: "Bhagwan Mahaveer University",
                              hintStyle: TextStyle(
                                color: GreyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "School/Collage/Institute",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Your Results...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Collage = val;
                            },
                            decoration: InputDecoration(
                              hintText: "70% (or) 7.0 CGPA",
                              hintStyle: TextStyle(
                                color: GreyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                            ),
                            textInputAction: TextInputAction.next,
                          ),
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              "Year Of Pass",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Year Of Pass...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              PassYear = val;
                            },
                            decoration: InputDecoration(
                              hintText: "2019",
                              hintStyle: TextStyle(
                                color: GreyColor,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: GreyColor),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: (val) {
                              if ( EducationFormKey.currentState!
                                  .validate()) {
                                EducationFormKey.currentState!.save();

                                print("===============================");

                                print(Course);
                                print(School);
                                print(Collage);
                                print(PassYear);
                                print("===============================");
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: BGColor,
    );
  }
}
