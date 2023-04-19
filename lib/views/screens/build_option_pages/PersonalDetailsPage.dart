import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';
import '../../utils/GlobalVariable.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
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
        title: Text("Personal Details"),
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
                      "DOB",
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
                  return "Enter Your Birthdate...";
                }
                return null;
              },
              onSaved: (val) {
                dob = val;
              },
              decoration: InputDecoration(
                hintText: 'DD/MM/YY',
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
                    "Marital Status",
                    style: TextStyle(
                        color: BlueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              SizedBox(
                height: h * 0.02,
              ),
                  RadioListTile(title: Text("Single"),value: "Single", groupValue: MaritalStatus, onChanged: (val) {
                    setState(() {
                      MaritalStatus = val!;
                    });
                  }),
                  RadioListTile(title: Text("Married"),value: "Married", groupValue: MaritalStatus, onChanged: (val) {
                    setState(() {
                      MaritalStatus = val!;
                    });
                  }),
          Align(
              alignment: Alignment(-1, 0),
              child: Text(
                "Language Know",
                style: TextStyle(
                    color: BlueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
          ),
                  CheckboxListTile(value: English, onChanged: (val) {
                    setState(() {
                      English = val!;
                    });
                  },title: Text("English"),controlAffinity: ListTileControlAffinity.leading,),CheckboxListTile(value: Hindi, onChanged: (val) {
                    setState(() {
                      Hindi = val!;
                    });
                  },title: Text("Hindi"),controlAffinity: ListTileControlAffinity.leading,),CheckboxListTile(value: Gujrati, onChanged: (val) {
                    setState(() {
                      Gujrati = val!;
                    });
                  },title: Text("Gujrati"),controlAffinity: ListTileControlAffinity.leading,),
                  Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Nationality",
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
                      hintText: "Indian",
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
