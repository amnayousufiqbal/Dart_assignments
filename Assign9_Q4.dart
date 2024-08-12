import 'dart:io';

void main() {
  print("Enter string to reversed:  ");
  String? OrignalString = stdin.readLineSync() ?? '';
  List<String> words = OrignalString.split('');
  String reversedString = words.reversed.join();
  print("Reversed String: $reversedString");
}
