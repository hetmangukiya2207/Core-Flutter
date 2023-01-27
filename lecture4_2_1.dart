import 'dart:io';
void main (){

List <Map> data = List.generate(3, (i) => {});
data.forEach((element)
 { 
  stdout.write("Enter your name : ");
  String? name = stdin.readLineSync();
  stdout.write("Enter your id : ");
  int ?id = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your age : ");
  double? age = double.parse(stdin.readLineSync()!);
  stdout.write ("Enter your salary : ");
  double? salary = double.parse(stdin.readLineSync()!);
  
  Map m = {
    'id' : id,
    'name' : name,
    'age' : age,
    'salary' : salary, 
  };

    data[data.indexOf(element)].addEntries(m.entries);
  });
  print (data);
}