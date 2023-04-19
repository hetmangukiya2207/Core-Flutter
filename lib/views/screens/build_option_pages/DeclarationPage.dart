import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/GlobalVariable.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({Key? key}) : super(key: key);

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeclarationPage"),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_rounded),
        ),
        backgroundColor: const Color(0xff0475FF),
      ),
      body: Form(
        key: declarationKey,
        child: Column(
          children: [
            Container(
              height: 50,
              width: W,
              color: const Color(0xff0475FF),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      // height: H / 2.5,
                      margin: const EdgeInsets.all(15),
                      width: W,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text("DeclarationPage",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xff0475FF),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                CupertinoSwitch(
                                  value: onOffDrButton,
                                  activeColor: const Color(0xff0475FF),
                                  onChanged: (value){
                                    setState(() {
                                      onOffDrButton = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            (onOffDrButton == true)
                                ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Icon(Icons.my_location_rounded, size: 50),
                                const SizedBox(height: 40),
                                TextFormField(
                                  controller: MyContrller,
                                  // initialValue: Variable.drDescription,
                                  validator: (value){
                                    if(value!.isEmpty)
                                    {
                                      return 'Please Enter Your DeclarationPage';
                                    }
                                  },
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: const InputDecoration(
                                    hintText: "Description",
                                    hintStyle: TextStyle(
                                      color: Color(0xffC1C1C1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(15),
                                    errorStyle: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  onChanged: (value){
                                    setState(() {
                                      drDescription = value;
                                      print(drDescription);
                                    });
                                  },
                                ),
                                const SizedBox(height: 40),
                                Row(
                                  children: const [
                                    Expanded(
                                      child: Text("Date",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff0475FF),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      child: Text("Place (Interview venue / city)",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff0475FF),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        // initialValue: Variable.drDate,
                                        controller: selectDrDate,
                                        readOnly: true,
                                        maxLength: 10,
                                        validator: (value){
                                          if(value!.isEmpty)
                                          {
                                            return 'Date';
                                          }
                                        },
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        decoration: const InputDecoration(
                                          counterText: "",
                                          hintText: "DD/MM/YYYY",
                                          hintStyle: TextStyle(
                                            color: Color(0xffC1C1C1),
                                            fontSize: 18  ,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(10),
                                          errorStyle: TextStyle(fontWeight: FontWeight.w600),
                                        ),
                                        textAlign: TextAlign.center,
                                        onTap: () async{
                                          DateTime? date = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1990),
                                            lastDate: DateTime.now(),
                                          );
                                          if(date != null)
                                          {
                                            setState(() {
                                              drDate = ('dd-MM-yyyy');
                                              selectDrDate.text =drDate;
                                              print(drDate);
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: TextFormField(
                                        controller: MyContrller,
                                        // initialValue: Variable.drPlace,
                                        maxLength: 10,
                                        validator: (value){
                                          if(value!.isEmpty)
                                          {
                                            return 'City';
                                          }
                                        },
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        decoration: const InputDecoration(
                                          counterText: "",
                                          hintText: "Eg. Surat",
                                          hintStyle: TextStyle(
                                            color: Color(0xffC1C1C1),
                                            fontSize: 18  ,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(10),
                                          errorStyle: TextStyle(fontWeight: FontWeight.w600),
                                        ),
                                        textAlign: TextAlign.center,
                                        onChanged: (value){
                                          setState(() {
                                            drPlace = value;
                                            print(drPlace);
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: (){
                                        setState(() {
                                          if(declarationKey.currentState!.validate())
                                          {
                                            print("Processing...");
                                            declarationKey.currentState!.save();
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(
                                                behavior: SnackBarBehavior.floating,
                                                content: const Text("Your Information is Saved"),
                                                backgroundColor: const Color(0xff0475FF),
                                                duration: const Duration(seconds: 3),
                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                                action: SnackBarAction(onPressed: (){}, label: "Dismiss",textColor: Colors.white),
                                                margin: const EdgeInsets.all(15),
                                              ),
                                            );
                                          }
                                        });
                                      },
                                      child: const Text("Save"),
                                    ),
                                    ElevatedButton(
                                      child: const Text("Reset"),
                                      onPressed: (){
                                        setState(() {
                                          declarationKey.currentState!.reset();
                                          drDescription = "";
                                          drDate = "";
                                          drPlace = "";
                                          selectDrDate.clear();
                                          MyContrller.clear();
                                          MyContrller.clear();
                                          onOffDrButton = false;
                                          print("DeclarationPage Description is Clear ${drDescription}");
                                          print("DeclarationPage Date is Clear ${drDate}");
                                          print("DeclarationPage Place is Clear ${drPlace}");
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffEDEDED),
    );
  }
}
