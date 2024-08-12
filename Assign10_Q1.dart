import 'dart:io';

void main() {
  print("Enter Number: ");
  int? num = int.tryParse(stdin.readLineSync() ?? '');
  if (num == null || num <= 0) {
    print('Please enter a valid positive number.');
    return;
  }
  int a = 0;
  int b = 1;
  print(a);
  print(b);
  for (int i = 2; i < num; i++) {
    int c = a + b;
    if (c >= num) {
      break;
    }
    print(c);
    a = b;
    b = c;
  }
}
