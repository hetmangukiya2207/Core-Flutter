import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../models/ContactModel.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    Contact data = ModalRoute.of(context)!.settings.arguments as Contact;

    String? firstName;
    String? lastName;
    String? phone;
    String? email;
    File? image;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.check,
              color: Colors.black,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                data.firstName = firstName!;
                data.lastName = lastName!;
                data.phoneNumber = phone!;
                data.email = email!;
                data.image = (image != null) ? image : data.image;

                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
                setState(() {});
              }
            },
          ),
          const SizedBox(
            width: 16,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: FractionalOffset.bottomRight,
                children: [
                  (data.image != null)
                      ? CircleAvatar(
                          radius: 75,
                          foregroundImage: FileImage(data.image as File),
                        )
                      : CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.grey,
                          child: Text(
                            "Add",
                            style: TextStyle(
                              fontSize: h * 0.03,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                  FloatingActionButton.small(
                    onPressed: () async {
                      ImagePicker pick = ImagePicker();
                      XFile? images =
                          await pick.pickImage(source: ImageSource.camera);
                      String path = images!.path;

                      setState(() {
                        image = File(path);
                        data.image = image;
                      });
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "First Name",
                      style: TextStyle(fontSize: h * 0.02),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      initialValue: data.firstName,
                      onSaved: (val) {
                        firstName = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter First Name First....";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Last Name",
                      style: TextStyle(fontSize: h * 0.02),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      initialValue: data.lastName,
                      onSaved: (val) {
                        lastName = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Last Name First....";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Phone",
                      style: TextStyle(fontSize: h * 0.02),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      initialValue: data.phoneNumber,
                      onSaved: (val) {
                        phone = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Phone Number First....";
                        } else if (val.length != 10) {
                          return "Enter valid Phone number....";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(fontSize: h * 0.02),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    TextFormField(
                      initialValue: data.email,
                      onSaved: (val) {
                        email = val!;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter Email First....";
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
