void main() {
  int number = 374;
  int largestDigit = 0;

  do {
    int digit = number % 10;
    if (digit > largestDigit) {
      largestDigit = digit;
    }
    number ~/= 10;
  } while (number > 0);

  print('Largest digit: $largestDigit');
}
