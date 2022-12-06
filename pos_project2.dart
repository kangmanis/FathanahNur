import 'dart:io';

void main() {
  menu();
  input();
}

dynamic price;
dynamic total;
dynamic subT;
dynamic discount;
dynamic gst;
dynamic NoI = 0;
dynamic choice;
dynamic code;
dynamic quantity = 0;

void menu() {
  print("||--------------Math'am Al-Mufid--------------||");
//Zahra Fathanah (2019050)
  Map<int, String> foods = {
    1: 'Bukhari Ayam    | RM 30.25',
    2: 'Bukhari Kambing | RM 40.15',
    3: 'Briyani Ayam    | RM 30.25',
    4: 'Briyani Kambing | RM 40.15',
    5: 'Tojin Lahm      | RM 12.25',
    6: 'Shakshuka       | RM 7.65',
    7: 'Onion Rings     | RM 7.50',
    8: 'Shadr Maqlyah   | RM 8.00',
    9: 'Mahhalaby       | RM 5.35',
  };
  foods.forEach((code, food) => print('$code. ${food}'));
}

void input() {
  stdout.write('Enter Product Code: ');
  code = int.parse(stdin.readLineSync()!);

  if (code == 1) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 30.25;
    subT = 30.25 * quantity;
    print('Bukhari Ayam [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 2) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 40.15;
    subT = 40.15 * quantity;
    print('Bukhari Kambing [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 3) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 30.25;
    subT = 30.25 * quantity;
    print('Briyani Ayam [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 4) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 40.15;
    subT = 40.15 * quantity;
    print('Briyani Kambing [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 5) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 12.25;
    subT = 12.25 * quantity;
    print('Tojin Lahm [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 6) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 7.65;
    subT = 7.65 * quantity;
    print('Shakshuka [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 7) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 7.50;
    subT = 7.50 * quantity;
    print('Onion Rings [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 8) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 8.00;
    subT = 8.00 * quantity;
    print('Shadr Maqlyah [RM $price] X $quantity');
    subTotal();
    add();
  } else if (code == 9) {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
    price = 5.35;
    subT = 5.35 * quantity;
    print('Mahhalaby [RM $price] X $quantity');
    subTotal();
    add();
  }
}

void subTotal() {
  print('<<--------------------Recipt-------------------->>');
  NoI += quantity;
  //print(foods[code]);
  print('Quantity: $quantity');
  print('Number Of Item = $NoI');

//Zahra Fathanah (2019050)
  print('SubTotal = RM $subT');
}

void count() {
  stdout.write('Discount(%): ');
  double? disc = double.parse(stdin.readLineSync()!);
  discount = disc / 100 * subT;

  gst = 0.06 * subT;
  print('GST 6% = $gst');

  total = subT - discount + gst;
  print('Total = RM $total');
}

void add() {
  stdout.write("\nWould you like to buy anything else?\n Y/N : ");
  choice = stdin.readLineSync();
  if (choice == 'y' || choice == 'Y') {
    main();
  } else if (choice == 'N' || choice == 'n') {
    count();
  } else {
    print("\n\n\t\tSorry Invalid Decision Entered\n\n\n");
    count();
    print('Thank You!');
  }
}
