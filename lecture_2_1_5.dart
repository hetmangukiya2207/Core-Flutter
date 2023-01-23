import 'dart:io';
  void main(){
  int i,j;
  print("Enter first no. :");
  int? n1 = int.parse(stdin.readLineSync()!);
  print("Enter Second no. :");
  int? n2 = int.parse(stdin.readLineSync()!);
  for(j=n1;j<=n2;j++){
  for(i=1;i<=10;i++){

    print("$j * $i = ${j*i}");
  }
  print("\t");
  }
}