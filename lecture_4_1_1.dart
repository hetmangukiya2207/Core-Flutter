import 'dart:io';
void main(){

stdout.write("Enter a no of input :");
 int n = int.parse(stdin.readLineSync()!);
int i;
for(i=0;i<n;i++){
  stdout.write("Enter $i element :");
  int a = int.parse(stdin.readLineSync()!);
}

List l = List.generate(n, (i) => ("${i+1} Hello"));
print(l);

}