void main() {
  List<String> words = ['apple', 'banana', 'cherry'];
  words.add('date');
  print('After add: $words');

  words.addAll(['strwaberry', 'fig', 'grape']);
  print('After addAll: $words');

  words.remove('cherry');
  print('After remove: $words');

  words.removeAt(2);
  print('After removeAt: $words');

  words.removeWhere((element) => element.startsWith('s'));
  print('After removeWhere: $words');

  int index = words.indexOf('fig');
  print('Index of fig: $index');

  words.sort();
  print('After sort: $words');

  List<String> sublist = words.sublist(1, 3);
  print('Sublist: $sublist');

  bool containsFig = words.contains('fig');
  print('Contains fig: $containsFig');

  int length = words.length;
  print('Length: $length');
}
