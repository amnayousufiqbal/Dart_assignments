import 'dart:io';

void main() {
  print("Enter one alphabet:  ");
  String? word = stdin.readLineSync();
  if (word != null && word.length == 1) {
    if (word == 'a' ||
        word == 'e' ||
        word == 'i' ||
        word == 'o' ||
        word == 'u') {
      print(true);
    } else {
      print(false);
    }
  } else {
    print("Invalid ");
  }
}
