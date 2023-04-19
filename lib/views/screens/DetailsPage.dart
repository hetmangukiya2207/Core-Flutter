import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/AllContactList.dart';
import '../models/ContactModel.dart';
import '../utils/ThemeUtils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    Contact contact = ModalRoute.of(context)!.settings.arguments as Contact;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Contacts",
          style:
              TextStyle(color: (AppTheme.isDark) ? Colors.white : Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.circle,
              color: (AppTheme.isDark) ? Colors.white : Colors.black,
            ),
            onPressed: () {
              setState(() {
                AppTheme.isDark = !AppTheme.isDark;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: (AppTheme.isDark) ? Colors.white : Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  CircleAvatar(
                    radius: 60,
                    foregroundImage: (contact.image != null)
                        ? FileImage(contact.image as File)
                        : const AssetImage("assets/images/UserLogo.png")
                            as ImageProvider,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () async {
                      Global.allContacts.remove(contact);
                      await Navigator.of(context)
                          .pushNamedAndRemoveUntil('/', (route) => false);
                    },
                    icon: Icon(Icons.delete),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('EditPage', arguments: contact);
                      setState(() {});
                    },
                    icon: Icon(Icons.edit),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "${contact.firstName} ${contact.lastName}",
                style: TextStyle(
                  fontSize: h * 0.03,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+91 ${contact.phoneNumber}",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatingActionButton(
                        onPressed: () async {
                          Uri url = Uri.parse("tel:+91${contact.phoneNumber}");

                          await launchUrl(url);
                        },
                        child: Icon(Icons.phone),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        elevation: 0,
                        mini: true,
                      ),
                      FloatingActionButton(
                        onPressed: () async {
                          Uri url = Uri.parse("sms:+91${contact.phoneNumber}");

                          await launchUrl(url);
                        },
                        child: Icon(Icons.message),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orangeAccent,
                        elevation: 0,
                        mini: true,
                      ),
                      FloatingActionButton(
                        onPressed: () async {
                          Uri url = Uri.parse("mailto:${contact.email}");

                          await launchUrl(url);
                        },
                        child: Icon(Icons.email),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.lightBlueAccent,
                        elevation: 0,
                        mini: true,
                      ),
                      FloatingActionButton(
                        onPressed: () async {
                          await Share.share(
                              "${contact.firstName} ${contact.lastName} => ${contact.phoneNumber}");
                        },
                        child: Icon(Icons.share),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        elevation: 0,
                        mini: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
