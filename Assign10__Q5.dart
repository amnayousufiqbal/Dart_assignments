import 'dart:io';

void main() {
  print("Enter a string: ");
  String inputString = stdin.readLineSync() ?? '';

  int vowelCount = 0;

  for (int i = 0; i < inputString.length; i++) {
    String char = inputString[i].toLowerCase();

    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      vowelCount++;
    }
  }

  print("Number of vowels in the string: $vowelCount");
}
