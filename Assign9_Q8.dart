void main() {
  final List<String> nameList = [
    "Shahzeb Naqvi",
    "Abdullah",
    "Abdullah",
    "Shahzeb Naqvi",
    "Abdullah",
    "Zain"
  ];

  List<String> uniqueList = nameList.toSet().toList();

  print('List with duplicates removed: $uniqueList');
}
