import 'dart:io';

void main() {
  print("Enter Number: ");
  int? n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  int factorial = 1;
  int i = n;

  while (i > 0) {
    factorial *= i;
    i--;
  }

  print('Factorial of $n is $factorial');
}
