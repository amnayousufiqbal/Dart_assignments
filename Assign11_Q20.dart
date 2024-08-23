void main() {
  Map<String, dynamic> car = {
    'brand': 'Toyota',
    'color': 'Red',
    'isSedan': true,
  };

  if (car['isSedan'] && car['color'] == 'Red') {
    print('Match');
  } else {
    print('No match');
  }
}
