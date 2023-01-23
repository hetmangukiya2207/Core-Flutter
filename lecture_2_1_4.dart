import 'dart:io';
void main(){
  int i;

  print("Enter no. for multiplication table :");

  int? n = int.parse(stdin.readLineSync()!);
  
  for(i=1;i<=10;i++){
    print("$n * $i = ${n*i}");
  }
}