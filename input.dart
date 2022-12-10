import 'dart:io';

dynamic price;
dynamic total;
dynamic subT = 0;
dynamic discount;
dynamic gst;
dynamic NoI = 0;
dynamic choice;
dynamic code;
dynamic quantity = 0;
dynamic nettTotal;
dynamic nettGst;
dynamic nettDisc;

class Code {
  //properties
  var _num;

  //constructor
  Code() {
    _num = " ";
  }

  //setter
  void setCode(dynamic code) {
    this._num = code;
  }

  //getter
  String getNum() {
    return _num;
  }

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

//Nur Khadijah (2015546) and //Zahra Fathanah (2019050)
  void input() {
    stdout.write('Enter Product Code: ');
    code = int.parse(stdin.readLineSync()!);

    if (code == 1) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 30.25;
      print('Bukhari Ayam [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 2) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 40.15;
      print('Bukhari Kambing [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 3) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 30.25;
      print('Briyani Ayam [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 4) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 40.15;
      print('Briyani Kambing [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 5) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 12.25;
      print('Tojin Lahm [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 6) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 7.65;
      print('Shakshuka [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 7) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 7.50;
      print('Onion Rings [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 8) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 8.00;
      print('Shadr Maqlyah [RM $price] X $quantity');
      subTotal();
      add();
    } else if (code == 9) {
      stdout.write('Enter Quantity: ');
      quantity = int.parse(stdin.readLineSync()!);
      price = 5.35;
      print('Mahhalaby [RM $price] X $quantity');
      subTotal();
      add();
    }
  }

//Zahra Fathanah (2019050)
  void subTotal() {
    print('<<--------------------Recipt-------------------->>');
    NoI += quantity;
    print('Quantity: $quantity');
    print('Number Of Item = $NoI');
    subT += price * quantity;
    print('SubTotal = RM $subT');
  }

//Nur Khadijah (2015546)
  void count() {
    stdout.write('Discount(%): ');
    double? disc = double.parse(stdin.readLineSync()!);
    discount = (disc / 100 * subT);
    nettDisc = discount.toStringAsFixed(2);
    print('(-)RM $discount');

    gst = (0.06 * subT);
    nettGst = gst.toStringAsFixed(2);
    print('GST 6% = $nettGst');

    total = subT - discount + gst;
    nettTotal = total.toStringAsFixed(2);
    print('Total = RM $nettTotal');
  }

//Nur Khadijah (2015546)
  void add() {}
}
