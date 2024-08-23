void main() {
  List<int> originalList = [10, 20, 30, 40, 50];
  int n = 2;

  List<int> newList = getFirstNElements(originalList, n);
  print(newList);
}

List<T> getFirstNElements<T>(List<T> list, int n) {
  if (n > list.length) {
    n = list.length;
  }
  return list.sublist(0, n);
}
