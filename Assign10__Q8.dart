void main() {
  int sum = 0;

  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      sum += i;
    }
  }

  print('Sum of all even numbers from 1 to 20 is $sum');
}
