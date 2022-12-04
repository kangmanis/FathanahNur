import 'dart:io';

void main() {
//int code;
//int quantity;
  dynamic price;
  dynamic total;
  dynamic amount;
  dynamic discount = 0.2;
  final gst;

  print("[1]. Apple");
  print("[2]. Orange");
  print("[3]. Pear");
  print("[4]. Watermelon");
  print("[5]. Dragonfruit");

  Map<int, String> fruits = {
    1: 'apple',
    2: 'orange',
    3: 'pear',
    4: 'watermelon',
    5: 'dragonfruit',
  };

  stdout.write('Enter Product Code: ');
  int code = int.parse(stdin.readLineSync()!);

  print('$code');

  stdout.write('Enter Quantity: ');
  int quantity = int.parse(stdin.readLineSync()!);

  print('$quantity');

  switch (code) {
    case 1:
      price = 12.00;
      break;
    case 2:
      price = 10.00;
      break;
    case 3:
      price = 9.00;
      break;
    case 4:
      price = 8.00;
      break;
    case 5:
      price = 6.3;
      break;
  }
  total = quantity * price;
  print('Total = $total');
  discount = discount / 100 * total;
  print('Discount = $discount');
  gst = 0.06 * total;
  print('GST 6% = $gst');
  amount = gst + total;
  print('Amount = $amount');
}
