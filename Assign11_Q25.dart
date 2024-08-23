void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int sum = 0;
  int i = 0;
  do {
    sum += numbers[i];
    i++;
  } while (i < numbers.length);

  double average = sum / numbers.length;
  print('Average: $average');
}
