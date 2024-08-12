import 'dart:io';

void main() {
  print("Enter Number: ");
  int? num = int.tryParse(stdin.readLineSync() ?? '');

  if (num == null || num <= 0) {
    print('Please enter a valid positive number.');
    return;
  }

  for (int i = 1; i <= num; i++) {
    String line = '\n';
    for (int j = 1; j <= i; j++) {
      line += '$i';
    }
    print(line);
  }
}
