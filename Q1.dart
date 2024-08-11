void main() {
  List<int> number = [12, 12, 22, 67, 81, 9];
  print(" list : $number");
  number.sort();
  print("Sort list : $number");
  print("smallest number of the list:   ${number.first}");
  print("largest number of the list:    ${number.last}");
}
