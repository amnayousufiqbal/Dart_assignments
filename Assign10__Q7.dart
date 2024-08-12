import 'dart:io';

void main() {
  print("Enter Number: ");

  int? n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('---');

  for (int i = 1; i <= n; i++) {
    print(i);
  }

  print('---');

  for (int i = n; i >= 1; i--) {
    print(i);
  }
}
