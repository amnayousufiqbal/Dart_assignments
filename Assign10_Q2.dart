void main() {
  List<int> num = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int larest = num[0];
  for (int i = 0; i < num.length; i++) {
    if (num[i] > larest) {
      larest = num[i];
    }
  }
  print("Largest Number in List:  $larest");
}
