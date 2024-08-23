void main() {
  var days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursady',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  for (int i = 0; i < 7; i++) {
    days.removeLast();
    print(days);
  }
}
