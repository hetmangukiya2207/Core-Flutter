import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pr_5_contact_diary_app/views/model/AllContactList.dart';
import 'package:pr_5_contact_diary_app/views/models/ContactModel.dart';
import 'package:pr_5_contact_diary_app/views/screens/AddContactPage.dart';
import 'package:pr_5_contact_diary_app/views/screens/DetailsPage.dart';
import 'package:pr_5_contact_diary_app/views/screens/EditPage.dart';
import 'package:pr_5_contact_diary_app/views/screens/Splashscreen.dart';
import 'package:pr_5_contact_diary_app/views/utils/ThemeUtils.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: (AppTheme.isDark == false) ? ThemeMode.light : ThemeMode.dark,
      initialRoute: 'splash_screen',
      routes: {
        '/': (context) => Scaffold(
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
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add,color: (AppTheme.isDark) ? Colors.black : Colors.white,),
            onPressed: () {
              Navigator.of(context).pushNamed('add_contact_page');
            },
          ),
          body: Container(
            alignment: Alignment.center,
            child: (Global.allContacts.isEmpty)
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.import_contacts_outlined, size: 100),
                const SizedBox(height: 20,),
                Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme.fromSwatch().copyWith(
                      primary: Colors.amber,
                    ),
                  ),
                  child: Text(
                    "You do not have any contacts yet.",
                    style: TextStyle(
                      color: (AppTheme.isDark) ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
              ],
            )
                : ListView.builder(
              itemCount: Global.allContacts.length,
              itemBuilder: (context, i) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil('DetailsPage',(route) => false,
                        arguments: Global.allContacts[i]);
                  },
                  leading: CircleAvatar(
                    backgroundImage: (Global.allContacts[i].image != null)
                        ? FileImage(Global.allContacts[i].image as File)
                        : null,
                  ),
                  title: Text(
                      "${Global.allContacts[i].firstName} ${Global.allContacts[i].lastName}"),
                  subtitle: Text("+91 ${Global.allContacts[i].phoneNumber}"),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    onPressed: () async {
                      Uri uri = Uri.parse(
                          "tel:+91${Global.allContacts[i].phoneNumber}");
                      try {
                        await launchUrl(uri);
                      } catch (e) {
                        print("Exception : $e");
                      }
                    },

                  ),
                );
              },
            ),
          ),
        ),
        'splash_screen': (context) => const SplashScreen(),
        'add_contact_page': (context) => const AddContactPage(),
        'DetailsPage': (context) => const DetailPage(),
        'EditPage': (context) => const EditPage(),
      },
    );
  }
}