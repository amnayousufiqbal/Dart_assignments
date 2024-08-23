void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 2, 8, 9, 10];
  List<int> evenNumbers = numbers.where((number) => number.isEven).toList();
  print(numbers);
  print(evenNumbers);
}
