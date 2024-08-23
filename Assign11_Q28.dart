void main() {
  marksheet(name: 'Amna', math: 85, science: 90, english: 88);
}

void marksheet(
    {required String name,
    required int math,
    required int science,
    required int english}) {
  int total = math + science + english;
  double average = total / 3;
  String grade;

  if (average >= 90) {
    grade = 'A';
  } else if (average >= 80) {
    grade = 'B';
  } else if (average >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  print('Name: $name');
  print('Math: $math');
  print('Science: $science');
  print('English: $english');
  print('Total: $total');
  print('Average: $average');
  print('Grade: $grade');
}
