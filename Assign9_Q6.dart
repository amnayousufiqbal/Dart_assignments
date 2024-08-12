import 'dart:math';

void main() {
  List<int> numbers = [34, 7, 23, 32, 5, 62, 18];

  int largest = numbers.reduce(max);
  int smallest = numbers.reduce(min);
  print('Largest number: $largest');
  print('Smallest number: $smallest');
}
