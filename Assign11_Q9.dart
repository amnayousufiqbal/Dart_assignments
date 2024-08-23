void main() {
  List<int> numbers = [3, 5, 7, 2, 8];
  int maxValue = numbers.reduce((curr, next) => curr > next ? curr : next);
  print('Max value: $maxValue');
}
