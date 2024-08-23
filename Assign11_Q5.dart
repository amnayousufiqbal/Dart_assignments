void main() {
  Map<String, String> contacts = {
    'name': 'amna',
    'fone': '03937878337',
  };
  var keysWithLength4 = contacts.keys.where((key) => key.length == 4).toList();
  print(keysWithLength4);
}
