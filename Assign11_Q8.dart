void main() {
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'Amna', 'eligible': true},
    {'name': 'Aisha', 'eligible': false},
    {'name': 'Alina', 'eligible': true},
    {'name': 'Ahmad', 'eligible': true},
    {'name': 'Ali', 'eligible': false},
  ];

  usersEligibility.removeWhere((user) => !user['eligible']!);
  print('$usersEligibility');
}
