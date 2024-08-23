void main() {
  Map<String, dynamic> person = {
    'name': 'Amna',
    'age': 22,
    'isStudent': true,
  };

  if (person['isStudent'] && person['age'] > 18) {
    print('Eligible');
  } else {
    print('Not eligible');
  }
}
