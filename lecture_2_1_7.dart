import 'dart:io';
void main(){
  print("Enter your first name?");
  String? a = stdin.readLineSync();

  print("Enter your last name?");
  String? b = stdin.readLineSync();
  
  print("Full Name : $a $b");
}