void main() {
  List<String> names = [
    "Ahmed",
    "Bilal",
    "Shahzeb Naqvi",
    "Muhmmad",
    "Ali",
    "Abdullah",
    "Ahmed",
    "Bilal"
  ];
  print("List:  $names");
  List<String> uniqueNames = names.toSet().toList();
  print("Unique List:  $uniqueNames");
}
