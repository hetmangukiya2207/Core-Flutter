import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorUtils.dart';

class AchievementsPage extends StatefulWidget {
  const AchievementsPage({Key? key}) : super(key: key);

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  List<TextEditingController> AchivmentsFields = [];
  @override
  void initState() {
    super.initState();
    AchivmentsFields.add(TextEditingController());
    AchivmentsFields.add(TextEditingController());
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
              Text("Enter Achievements",style: TextStyle(
                color: GreyColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              SizedBox(height: h * 0.05,),
              ...AchivmentsFields.map((e) {
                return Row(
                  children: [
                    Expanded(flex: 8,child: TextField(controller: e,decoration: InputDecoration(
                      hintText: "Exceeded sales 17% average",
                    ),
                    ),
                    ),
                    Expanded(flex: 1,child: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          AchivmentsFields.remove(e);
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
                    AchivmentsFields.add(TextEditingController());
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
