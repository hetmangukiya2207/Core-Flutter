import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_4_resume_builder_app/views/utils/GlobalVariable.dart';
import 'package:pr_4_resume_builder_app/views/utils/Variables.dart';

import '../../utils/ColorUtils.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
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
        title: const Text("Experience"),
        toolbarHeight: h * 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key:  ExperienceFormKey,
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
                              "Company Name",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Company Name";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              CompanyName = val;
                            },
                            decoration: InputDecoration(
                              hintText: "Company Name",
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
                                return "Enter The Field...";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Quality = val;
                            },
                            decoration: InputDecoration(
                              hintText: "Quality Test Engineer",
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
                              "Roles(Optional)",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              Roles = val;
                            },
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: "Working Roles...",
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

                                print(CompanyName);
                                print(Quality);
                                print(Roles);
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
