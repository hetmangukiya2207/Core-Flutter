import 'dart:io';

import 'package:flutter/material.dart';

// Contact Info Page

String? name;
String? email;
String? phone;
String? address1;
String? address2;
String? address3;
File? image;

// Carrier Objective Page

String? description;
String? experience;

// Personal Details Page

String MaritalStatus = "Marital Status";
String? dob;
bool English = false;
bool Hindi = false;
bool Gujrati = false;

// Education Page

String? School;
String? Course;
String? Collage;
String? PassYear;

// Experience Page

String? CompanyName;
String? Quality;
String? Roles;

// Contact Info Page

String Technologies = "Marital Status";
String? ProjectTitle;
bool CLAN = false;
bool CPP = false;
bool Flutter = false;

// Reference Page

String? ReferenceName;
String? Designation;
String? Organization;

// Declaration Page

String drDescription = "", drPlace = "", drDate = "";
bool onOffDrButton = false;
TextEditingController selectDrDate = TextEditingController();
GlobalKey<FormState> declarationKey = GlobalKey<FormState>();

TextEditingController MyContrller = TextEditingController();
