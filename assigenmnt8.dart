void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'ayesha', 'score': 85},
    {'name': 'waniya', 'score': 58},
    {'name': 'ali', 'score': 92},
    {'name': 'ahmad', 'score': 76},
    {'name': 'amna', 'score': 64}
  ];

  for (var student in students) {
    String grade;

    if (student['score'] >= 90) {
      grade = 'A';
    } else if (student['score'] >= 80) {
      grade = 'B';
    } else if (student['score'] >= 70) {
      grade = 'C';
    } else if (student['score'] >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    student['grade'] = grade;
  }

  print(students);
}
