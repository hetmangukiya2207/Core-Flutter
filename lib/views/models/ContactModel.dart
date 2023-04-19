import 'dart:io';

class Contact {
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  File? image;

  Contact({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    this.image,
  });
}