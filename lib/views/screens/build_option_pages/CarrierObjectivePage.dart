import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';
import '../../utils/Variables.dart';
import '../../utils/GlobalVariable.dart';

class CarrierObjectivePage extends StatefulWidget {
  const CarrierObjectivePage({Key? key}) : super(key: key);

  @override
  State<CarrierObjectivePage> createState() => _CarrierObjectivePageState();
}

class _CarrierObjectivePageState extends State<CarrierObjectivePage> {
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
        title: const Text("Carrier Objective"),
        toolbarHeight: h * 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: carrierObjectiveFormKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: BGColor,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    height: h * 0.38,
                    decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadiusDirectional.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Carrer Objective",
                            style: TextStyle(
                                fontSize: 18,
                                color: BlueColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter description Please...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            description = val;
                          },
                          maxLines: 5,
                          decoration: InputDecoration(
                            hintText: 'Description',
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
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.none,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    height: h * 0.3,
                    decoration: BoxDecoration(
                      color: WhiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Current Designation (Experienced Candidate)",
                            style: TextStyle(
                                fontSize: 18,
                                color: BlueColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextFormField(
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Enter description Please...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            experience = val;
                          },
                          decoration: InputDecoration(
                            hintText: "Software Engineer",
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
                          onFieldSubmitted: (val) {
                            if (carrierObjectiveFormKey.currentState!
                                .validate()) {
                              carrierObjectiveFormKey.currentState!.save();

                              print("===============================");

                              print(experience);
                              print(description);
                              print("===============================");
                            }
                          },
                        ),
                      ],
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
