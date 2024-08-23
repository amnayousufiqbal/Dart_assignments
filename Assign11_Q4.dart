import 'dart:math';

void main() {
  var numbers = [1, 2, 4, 7, 12, 44, 21];
  print(numbers.reduce(min));
  print(numbers.reduce(max));
}
