void main() {
  var duplicate = [
    'test1',
    'test2',
    'test2',
    'test3',
    'test2',
    'test1',
    'test4',
    'test3',
    'test4'
  ];
  var noDuplicate = duplicate.toSet().toList();
  print(noDuplicate);
}
