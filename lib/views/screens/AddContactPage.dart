import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../model/AllContactList.dart';
import '../models/ContactModel.dart';
import '../utils/ThemeUtils.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final _picker = ImagePicker();
  File? image;

  final GlobalKey<FormState> _addContactFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;

  TextStyle labelStyle = TextStyle(
    color: (AppTheme.isDark) ? Colors.black : Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: (AppTheme.isDark) ? Colors.white : Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Add",
          style:
              TextStyle(color: (AppTheme.isDark) ? Colors.white : Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: (AppTheme.isDark) ? Colors.white : Colors.black,
            ),
            onPressed: () {
              if (_addContactFormKey.currentState!.validate()) {
                _addContactFormKey.currentState!.save();

                Contact c1 = Contact(
                  firstName: firstName,
                  lastName: lastName,
                  phoneNumber: phoneNumber,
                  email: email,
                  image: image,
                );

                setState(() {
                  Global.allContacts.add(c1);
                });

                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 700,
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.grey,
                      foregroundImage:
                          (image != null) ? FileImage(image!) : null,
                      foregroundColor: Colors.black,
                      child: const Text(
                        "Add",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () async {
                        XFile? imageXfile = await _picker?.pickImage(
                            source: ImageSource.camera);
                        setState(() {
                          String imgPath = imageXfile!.path;
                          image = File(imgPath);
                        });
                      },
                      mini: true,
                      child: const Icon(
                        CupertinoIcons.add,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Form(
                      key: _addContactFormKey,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 30),
                            Text(
                              "First Name",
                              style: labelStyle,
                            ),
                            TextFormField(
                              controller: _firstNameController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your first name...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  firstName = val;
                                });
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Enter your first name..."),
                              textInputAction: TextInputAction.next,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Last Name",
                              style: labelStyle,
                            ),
                            TextFormField(
                              controller: _lastNameController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your last name...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  lastName = val;
                                });
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Enter your last name..."),
                              textInputAction: TextInputAction.next,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Phone Number",
                              style: labelStyle,
                            ),
                            TextFormField(
                              controller: _phoneController,
                              keyboardType: TextInputType.number,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your phone number...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  phoneNumber = val;
                                });
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Enter your phone number..."),
                              textInputAction: TextInputAction.next,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Email",
                              style: labelStyle,
                            ),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your last name...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  email = val;
                                });
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  hintText: "Enter your email..."),
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
