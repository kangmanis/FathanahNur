import 'dart:io';


void main() {
  menu();
  input();

}

dynamic price;
dynamic total;
dynamic subT;
dynamic amount;
dynamic discount;
dynamic gst;
dynamic add;
dynamic NoI = 0;
int code = 0;
int quantity = 0;
dynamic quan;

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

  switch (code) {
    case 1:
      price = 30.25;
      //print('Bukhari Ayam [RM $price] X $NoI');
      break;
    case 2:
      //var sum1 = price * quantity;
      price = 40.25;
      //print('Bukhari Kambing [RM $price] X $NoI');
      break;
    case 3:
      price = 30.25;
      //print('Briyani Ayam [RM $price] X $NoI');
      break;
    case 4:
      price = 40.25;
      //print('Briyani Kambing [RM $price] X $quantity');
      break;
    case 5:
      price = 12.25;
      //print('Tojin Lahm [RM $price] X $quantity');
      break;
    case 6:
      price = 7.65;
      //print('Shakshuka [RM $price] X $quantity');
      break;
    case 7:
      price = 7.50;
      //print('Onion Rings [RM $price] X $quantity');
      break;
    case 8:
      price = 8.00;
      //print('Shadr Maqlyah [RM $price] X $quantity');
      break;
    case 9:
      price = 5.35;
      //print('Mahhalaby [RM $price] X $quantity');
      break;
  }

}



//Zahra Fathanah (2019050)
void input() {
  stdout.write('Enter Product Code: ');
  code = int.parse(stdin.readLineSync()!);

  stdout.write('Enter Quantity: ');
  quantity = int.parse(stdin.readLineSync()!);

    print('<<--------------------Recipt-------------------->>');
    NoI += quantity;
   // print('Quantity: $quantity');
    print('Number Of Item = $NoI');
  
    display();

    
}


void count() {
    //NoI += quantity;
    //print(foods[code]);
    print('Number Of Item = $NoI');
    subT = quantity * price;
    print('Sub Total = $subT');
    amount = subT + subT;
    print('Amount = $amount');
    
    stdout.write('Discount(%): ');
    int disc = int.parse(stdin.readLineSync()!);
    discount = disc / 100 * subT;
  
    gst = 0.06 * subT;
    print('GST 6% = $gst');

    total = subT - discount + gst;
    print('Total = RM $amount');
}

void display() {
  stdout.write("\nWould you like to buy anything else?\n Y/N : ");
  add = stdin.readLineSync();
  if (add == 'y' || add == 'Y') {
    main();
  } else if (add == 'N' || add == 'n') {
    count();

  }
}
