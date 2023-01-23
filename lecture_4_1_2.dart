import'dart:io';
void main (){

int n;
stdout.write("Enter total Number of State in India : ");
n = int.parse(stdin.readLineSync()!);
List a = List.generate(n, (index) => null);
a.forEach((e) {
int i = a.indexOf(e);
stdout.write("Enter State ${i + 1} : ");
a[i] = stdin.readLineSync()!;
});
print(a);
}