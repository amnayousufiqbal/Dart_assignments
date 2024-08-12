void main() {
  // Creating a map
  Map<String, int> scores = {'ali': 85, 'aiza': 92, 'aisha': 78};

  // Adding a new key-value pair
  scores['Maria'] = 88;
  print('After adding Maria: $scores');

  // Updating a value for an existing key
  scores['ali'] = 90;
  print('After updating ali: $scores');

  // Removing a key-value pair by key
  scores.remove('aiza');
  print('After removing aiza: $scores');

  // Checking if a key exists
  bool hasaisha = scores.containsKey('aisha');
  print('Contains aisha: $hasaisha');

  // Checking if a value exists
  bool hasScore88 = scores.containsValue(88);
  print('Contains score 88: $hasScore88');

  // Safely retrieving a value by key
  String key = 'Alina';
  int? alinaScore = scores[key];
  if (alinaScore != null) {
    print('Score of $key: $alinaScore');
  } else {
    print('$key is not in the map.');
  }

  // Iterating over the map entries
  scores.forEach((key, value) {
    print('$key: $value');
  });

  // Retrieving keys and values
  Iterable<String> keys = scores.keys; // Gets an iterable of keys
  Iterable<int> values = scores.values; // Gets an iterable of values
  print('Keys: $keys');
  print('Values: $values');

  // Clearing the map
  scores.clear(); // Removes all key-value pairs from the map
  print('After clear: $scores');
}
