
import 'dart:io';
void main(){
  print("Enter a number :");
  int? a = int.parse(stdin.readLineSync()!);
  print("Cube : ${a*a*a}");
}