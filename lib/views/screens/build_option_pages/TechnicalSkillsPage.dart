import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';

class TechnicalSkillsPage extends StatefulWidget {
  const TechnicalSkillsPage({Key? key}) : super(key: key);

  @override
  State<TechnicalSkillsPage> createState() => _TechnicalSkillsPageState();
}

class _TechnicalSkillsPageState extends State<TechnicalSkillsPage> {
  List<TextEditingController> allTextFields = [];
  @override
  void initState() {
    super.initState();
    allTextFields.add(TextEditingController());
    allTextFields.add(TextEditingController());
  }
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
        title: Text("Technical Skillse"),
        toolbarHeight: h * 0.2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          height: h * 0.6,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Enter Your Skills",style: TextStyle(
                color: GreyColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              SizedBox(height: h * 0.05,),
              ...allTextFields.map((e) {
                return Row(
                  children: [
                    Expanded(flex: 8,child: TextField(controller: e,decoration: InputDecoration(
                      hintText: "Enter Skills",
                    ),
                    ),
                    ),
                    Expanded(flex: 1,child: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          allTextFields.remove(e);
                        });
                      },
                    ),),
                  ],
                );
              }).toList(),
              const SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                height: h * 0.08,
                child: OutlinedButton(onPressed: () {
                  setState(() {
                    allTextFields.add(TextEditingController());
                  });
                }, child: Icon(CupertinoIcons.add,color: GreyColor,),),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: BGColor,
    );
  }
}
