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
  var _num;

  Code() {
    _num = " ";
  }

  void setCode(dynamic code) {
    this._num = code;
  }

  String getNum() {
    return _num;
  }

//Zahra Fathanah (2019050)
  void menu() {
    print("||--------------Math'am Al-Mufid--------------||");
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

//Nur Khadijah (2015546)
  void input() {
    stdout.write('Enter Quantity: ');
    quantity = int.parse(stdin.readLineSync()!);
  }

//Zahra Fathanah (2019050)
  void subTotal() {
    NoI += quantity;
    print('Quantity: $quantity');
    print('Number Of Item = $NoI');
    subT += price * quantity;
    print('SubTotal = RM $subT');
  }

  void count() {
//Zahra Fathanah (2019050)
    print('<<--------------------Recipt-------------------->>');
    stdout.write('Discount(%) = ');
    double? disc = double.parse(stdin.readLineSync()!);
    discount = (disc / 100 * subT);
    nettDisc = discount.toStringAsFixed(2);

//Nur Khadijah (2015546)
    gst = (0.06 * subT);
    nettGst = gst.toStringAsFixed(2);
    print('GST 6% = $nettGst');

    total = subT - discount + gst;
    nettTotal = total.toStringAsFixed(2);
    print('Total = RM $nettTotal');
  }
}
