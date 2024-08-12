import 'dart:io';

void main() {
  print("Enter First number: ");
  int? num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second number: ");
  int? num2 = int.parse(stdin.readLineSync()!);
  print("Operators:\t +\t-\t*\t/\t%");
  print("Enter desired Operator: ");
  String? operator = stdin.readLineSync();
  var result;
  if (operator == "+") {
    result = num1 + num2;
  } else if (operator == "-") {
    result = num1 - num2;
  } else if (operator == "*") {
    result = num1 * num2;
  } else if (operator == "/") {
    result = num1 / num2;
  } else if (operator == "%") {
    result = num1 % num2;
  } else {
    print("Invalid Operator");
  }
  print("Output:   $result");
}
