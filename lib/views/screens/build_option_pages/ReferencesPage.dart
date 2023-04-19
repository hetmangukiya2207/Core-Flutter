import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';
import '../../utils/GlobalVariable.dart';
import '../../utils/Variables.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({Key? key}) : super(key: key);

  @override
  State<ReferencesPage> createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
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
        title: const Text("References"),
        toolbarHeight: h * 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key:  ReferenceFormKey,
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
                              "Reference Name",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              ReferenceName = val;
                            },
                            decoration: InputDecoration(
                              hintText: "Enter Reference Name",
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
                              "Designation",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            onSaved: (val) {
                              Designation = val;
                            },
                            decoration: InputDecoration(
                              hintText: "Marketing Manager",
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
                              "Organization/Institute",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: BlueColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter Organization or Institute";
                              }
                              return null;
                            },
                            onSaved: (val) {
                              Organization = val;
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
                              if ( ReferenceFormKey.currentState!
                                  .validate()) {
                                ReferenceFormKey.currentState!.save();
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
