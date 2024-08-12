import 'dart:io';

void main() {
  print("Enter a list of numbers separated by spaces: ");

  String? input = stdin.readLineSync();
  List<int> numbers = input?.split(' ').map(int.parse).toList() ?? [];

  print("Numbers greater than 5:");
  for (int number in numbers) {
    if (number > 5) {
      print(number);
    }
  }
}
