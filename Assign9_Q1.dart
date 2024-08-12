void main() {
  // Creating a list
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  fruits.add('Date'); // Adds 'Date' to the end of the list
  print('After add: $fruits');

  fruits.addAll(
      ['Strawberry', 'Fig']); // Adds multiple elements to the end of the list
  print('After addAll: $fruits');

  fruits.insert(2, 'Blueberry'); // Inserts 'Blueberry' at index 2
  print('After insert: $fruits');

  fruits.insertAll(
      4, ['Grape', 'mango']); // Inserts multiple elements starting at index 4
  print('After insertAll: $fruits');

  fruits.remove('Banana'); // Removes the first occurrence of 'Banana'
  print('After remove: $fruits');

  fruits.removeAt(1); // Removes the element at index 1
  print('After removeAt: $fruits');

  fruits.removeLast(); // Removes the last element
  print('After removeLast: $fruits');

  fruits.clear(); // Removes all elements from the list
  print('After clear: $fruits');

  fruits = ['Apple', 'Banana', 'Cherry'];

  // Checking if the list contains an element
  bool hasApple =
      fruits.contains('Apple'); // Returns true if 'Apple' is in the list
  print('Contains Apple: $hasApple');

  // Getting the index of an element
  int index = fruits.indexOf('Banana'); // Returns the index of 'Banana'
  print('Index of Banana: $index');

  // Retrieving an element at a specific index
  String fruit = fruits[1]; // Retrieves the element at index 1
  print('Element at index 1: $fruit');

  // Mapping each element to another value
  List<int> lengths =
      fruits.map((f) => f.length).toList(); // Maps each fruit to its length
  print('Lengths of fruit names: $lengths');
}
