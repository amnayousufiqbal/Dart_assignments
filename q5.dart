void main() {
  List<int> originalList = [
    12,
    26,
    -20,
    -5,
    16,
    22,
    -9,
    65,
    98,
    -22,
    4,
    -14,
    -16
  ];
  List<int> positiveList = List.from(originalList)
    ..retainWhere((elements) => elements > 1);
  print("Orignal List:   $originalList");
  print("Positive List:   $positiveList");
}
