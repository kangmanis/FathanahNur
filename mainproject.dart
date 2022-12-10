import 'dart:io';
import 'input.dart';

void main() {
  Code a = new Code();
  a.menu(); 

  stdout.write('Enter Product Code: ');
  code = int.parse(stdin.readLineSync()!);

  //Zahra Fathanah (2019050)
  if (code == 1) {
    a.input();
    price = 30.25;
    print('Bukhari Ayam [RM $price] X $quantity');
    a.subTotal();
    
  } else if (code == 2) {
    a.input();
    price = 40.15;
    print('Bukhari Kambing [RM $price] X $quantity');
    a.subTotal();
    
  } else if (code == 3) {
    a.input();
    price = 30.25;
    print('Briyani Ayam [RM $price] X $quantity');
    a.subTotal();
    
  } else if (code == 4) {
    a.input();
    price = 40.15;
    print('Briyani Kambing [RM $price] X $quantity');
    a.subTotal();
    
  } else if (code == 5) {
    a.input();
    price = 12.25;
    print('Tojin Lahm [RM $price] X $quantity');
    a.subTotal();
    
  } else if (code == 6) {
    a.input();
    price = 7.65;
    print('Shakshuka [RM $price] X $quantity');
    a.subTotal();
    
  } else if (code == 7) {
    a.input();
    price = 7.50;
    print('Onion Rings [RM $price] X $quantity');
    a.subTotal();

  } else if (code == 8) {
    a.input();
    price = 8.00;
    print('Shadr Maqlyah [RM $price] X $quantity');
    a.subTotal();

  } else if (code == 9){
    a.input();
    price = 5.35;
    print('Mahhalaby [RM $price] X $quantity');
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
    print('Thank You!');
  }
}
