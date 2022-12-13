import 'dart:io';
import 'Zf.dart';

void main() {
  Code a = new Code();
  a.menu();

  stdout.write('Enter Product Code: ');
  code = int.parse(stdin.readLineSync()!);

  //Zahra Fathanah (2019050)
  if (code == 1) {
    a.input();
    //foods.values;
    name = 'Bukhari Ayam';
    price = 30.25;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 2) {
    a.input();
    name = 'Bukhari Kambing';
    price = 40.15;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 3) {
    a.input();
    name = 'Briyani Ayam';
    price = 30.25;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 4) {
    a.input();
    name = 'Briyani Kambing';
    price = 40.15;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 5) {
    a.input();
    name = 'Tojin Lahm';
    price = 12.25;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 6) {
    a.input();
    name = 'Shakshuka';
    price = 7.65;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 7) {
    a.input();
    name = 'Onion Rings';
    price = 7.50;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 8) {
    a.input();
    name = 'Shadr Maqlyah';
    price = 8.00;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  } else if (code == 9) {
    a.input();
    name = 'Mahhalaby';
    price = 5.35;
    print('$name [RM $price] X $quantity');
    a.subTotal();
  }

//Nur Khadijah (2015546)
  stdout.write("\nWould you like to buy anything else?\n Y/N : ");
  choice = stdin.readLineSync();
  if (choice == 'y' || choice == 'Y') {
    main();
  } else if (choice == 'N' || choice == 'n') {
    a.count();
  } else {
    print("\n\n\t\tSorry Invalid Decision Entered\n\n\n");
    main();
  }
}
