void main() {
  Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 1000,
    'quantity': 5,
  };

  if (product['quantity'] > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }
}
