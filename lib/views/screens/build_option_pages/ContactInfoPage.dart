import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_4_resume_builder_app/views/utils/ColorUtils.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/Variables.dart';
import '../../utils/GlobalVariable.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({Key? key}) : super(key: key);

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

ImagePicker? picker = ImagePicker();
int initialLayer = 0;

class _ContactInfoPageState extends State<ContactInfoPage> {
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
        title: const Text("Resume Workspace"),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: BlueColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          initialLayer = 0;
                        });
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            color: WhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          initialLayer = 1;
                        });
                      },
                      child: Text(
                        "Photo",
                        style: TextStyle(
                            color: WhiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 10,
            child: Container(
              color: BGColor,
              padding: const EdgeInsets.all(24),
              child: IndexedStack(
                index: initialLayer,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      color: WhiteColor,
                      height: h * 0.6,
                      width: double.infinity,
                      child: Form(
                        key: contactFormKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: nameController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your name first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                name = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                  hintText: "Name",
                                  prefixIcon: Icon(CupertinoIcons.person)),
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your email first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                email = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                  hintText: "email",
                                  prefixIcon: Icon(Icons.email)),
                            ),
                            TextFormField(
                              controller: PhoneController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your phone number first...";
                                } else if (val.length != 10) {
                                  return "Enter 10 digit number";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                phone = val;
                              },
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                  hintText: "Phone Number",
                                  prefixIcon: Icon(Icons.phone_android)),
                            ),
                            TextFormField(
                              controller: Address1Controller,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Address first...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                address1 = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                  hintText: "Address",
                                  prefixIcon: Icon(CupertinoIcons.location)),
                            ),
                            TextFormField(
                              controller: Address2Controller,
                              onSaved: (val) {
                                address2 = val;
                              },
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "Street Line 1",
                              ),
                            ),
                            TextFormField(
                              controller: Address3Controller,
                              onSaved: (val) {
                                address3 = val;
                              },
                              textInputAction: TextInputAction.done,
                              onFieldSubmitted: (val) {
                                if (contactFormKey.currentState!.validate()) {
                                  contactFormKey.currentState!.save();

                                  print("===============================");
                                  print(name);
                                  print(phone);
                                  print(email);
                                  print(address1);
                                  print(address2);
                                  print(address3);
                                  print("===============================");
                                }
                              },
                              decoration: const InputDecoration(
                                hintText: "Street Line 2",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: WhiteColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: h * 0.3,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: Text(
                            "ADD",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          backgroundColor: Colors.grey.shade200,
                          foregroundImage:
                              (image != null) ? FileImage(image as File) : null,
                        ),
                        FloatingActionButton(
                          onPressed: () async {
                            XFile? imageXfile = await picker?.pickImage(
                                source: ImageSource.camera);
                            setState(() {
                              String ImagePath = imageXfile!.path;
                              image = File(ImagePath);
                            });
                          },
                          mini: true,
                          child: const Icon(
                            CupertinoIcons.add,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
