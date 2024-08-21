import 'dart:io';

String? customerName;

void main() {
  Map<String, double> items = {
    'Rice': 300,
    'Sugar': 700,
    'Flour': 1050,
    'Milk': 1099,
    'Bread': 130,
    'Eggs': 290,
    'Butter': 1750,
    'Oil': 2300,
    'Salt': 50,
    'Tea': 380,
    'Coffee': 240,
    'Soap': 370,
    'Shampoo': 350,
    'Toothpaste': 200,
    'Toilet Paper': 200,
  };

  Map<String, int> stock = {
    'Rice': 50,
    'Sugar': 30,
    'Flour': 40,
    'Milk': 20,
    'Bread': 25,
    'Eggs': 15,
    'Butter': 18,
    'Oil': 22,
    'Salt': 35,
    'Tea': 28,
    'Coffee': 20,
    'Soap': 45,
    'Shampoo': 12,
    'Toothpaste': 25,
    'Toilet Paper': 50
  };

  List<Map<String, dynamic>> orderItems = [];
  print("=========================================");
  print('=== General Store Management System ===');
  print("=========================================");
  while (true) {
    print('Press Enter to show the menu...');
    stdin.readLineSync();
    print('1. View Menu');
    print('2. Place an Order');
    print('3. View Order');
    print('4. Calculate Bill');
    print('5. Manage Stock');
    print('6. Exit');
    print('Choose an option: ');
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        viewMenu(items);
        break;
      case '2':
        placeOrder(items, stock, orderItems);
        print("Thank you for placing the Order");
        break;
      case '3':
        viewOrder(orderItems);
        break;
      case '4':
        double totalBill = calculateBill(items, orderItems);
        print("\nTotal Bill: ${totalBill.toStringAsFixed(2)} Rs");
        break;
      case '5':
        manageStock(stock);
        break;
      case '6':
        print("=========================================");
        print("========Thank you for visiting us!=======");
        print("=========================================");
        exit(0);
      default:
        print("Invalid Option");
    }
  }
}

void viewMenu(Map<String, double> items) {
  print('\n======== Menu =========');
  items.forEach((item, price) {
    print('$item ======> ${price.toStringAsFixed(2)} Rs');
  });
}

void placeOrder(Map<String, double> items, Map<String, int> stock,
    List<Map<String, dynamic>> orderItems) {
  print("\nEnter your name: ");
  customerName = stdin.readLineSync();
  print("Welcome $customerName to our store.");
  while (true) {
    print("\nEnter the item you want to order or type 'done' to finish: ");
    String? order = stdin.readLineSync();
    if (order == null || order.toLowerCase() == 'done') {
      break;
    }

    String? matchedItem = items.keys.firstWhere(
        (item) => item.toLowerCase() == order.toLowerCase(),
        orElse: () => '');

    if (matchedItem.isNotEmpty) {
      if (stock[matchedItem]! > 0) {
        print("Enter the quantity for $matchedItem: ");
        int? quantity = int.tryParse(stdin.readLineSync() ?? '');
        if (quantity != null &&
            quantity > 0 &&
            quantity <= stock[matchedItem]!) {
          orderItems.add({'item': matchedItem, 'quantity': quantity});
          stock[matchedItem] = stock[matchedItem]! - quantity;
          print("\nOrder added.");
        } else {
          print("Invalid quantity or insufficient stock.");
        }
      } else {
        print("\nSorry! $matchedItem is out of stock.");
      }
    } else {
      print("\nItem not found.");
    }
  }

  showOrderSummary(orderItems);
}

void showOrderSummary(List<Map<String, dynamic>> orderItems) {
  print("\nOrder Summary for $customerName:\n");
  if (orderItems.isEmpty) {
    print("No items in the order.");
  } else {
    orderItems.forEach((order) {
      print('${order['quantity']} x ${order['item']}');
    });
    print("Do you want to confirm the order? (yes/no): ");
    String? confirm = stdin.readLineSync();
    if (confirm?.toLowerCase() == 'yes') {
      print("Order confirmed.");
      print("Get your bill from main menu.\n");
    } else {
      print("Order canceled.");
      orderItems.clear();
    }
  }
}

void viewOrder(List<Map<String, dynamic>> orderItems) {
  print("\nOrder for $customerName:");
  if (orderItems.isEmpty) {
    print("You haven't placed any order.");
  } else {
    orderItems.forEach((order) {
      print('${order['quantity']} x ${order['item']}');
    });
  }
}

double calculateBill(
    Map<String, double> items, List<Map<String, dynamic>> orderItems) {
  double total = 0.0;
  print("\nTotal Bill for $customerName:\n");

  for (var order in orderItems) {
    total += items[order['item']]! * order['quantity'];
  }
  return total;
}

void manageStock(Map<String, int> stock) {
  while (true) {
    print("\nCurrent Stock:");
    stock.forEach((item, quantity) {
      print("$item: $quantity");
    });
    print("\nEnter the item to restock or type 'done' to finish: ");
    String? item = stdin.readLineSync();
    if (item == null || item.toLowerCase() == 'done') {
      break;
    }
    String? matchedItem = stock.keys.firstWhere(
        (key) => key.toLowerCase() == item.toLowerCase(),
        orElse: () => '');
    if (matchedItem.isNotEmpty) {
      print("Enter quantity to add: ");
      int? quantity = int.tryParse(stdin.readLineSync() ?? '');
      if (quantity != null && quantity > 0) {
        stock[matchedItem] = stock[matchedItem]! + quantity;
        print("$quantity $matchedItem added to stock.");
      } else {
        print("Invalid quantity.");
      }
    } else {
      print("Item not found in stock.");
    }
  }
}
