import 'dart:io';
void main() {
  double num1, num2, result;

  
  print("Enter first number: ");
  num1 = double.parse(stdin.readLineSync()!);
  print("Enter second number: ");
  num2 = double.parse(stdin.readLineSync()!);
  print("Enter operator 1 for Addition       : ");
  print("Enter operator 2 for Subtraction    : ");
  print("Enter operator 3 for Multiplication : ");
  print("Enter operator 4 for Division       : ");
  print("Enter operator 5 for Exit           : ");
 int? n = int.parse(stdin.readLineSync()!);

  switch (n) {
    case 1:
      result = num1 + num2;
      print("Sum : $num1 + $num2 = $result");
      break;
    case 2:
      result = num1 - num2;
        print("Sub : $num1 - $num2 = $result");
      break;
    case 3:
      result = num1 * num2;
        print("Mul : $num1 * $num2 = $result");
      break;
    case 4:
      result = num1 / num2;
        print("Div : $num1 / $num2 = $result");
      break;
    default:
      print("Invalid input");
      return;
  }
}