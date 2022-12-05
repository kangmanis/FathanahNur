import 'dart:io';

void main() {
//int code;
//int quantity;
  dynamic price;
  dynamic total;
  dynamic subT;
  dynamic discount;
  final gst;
  dynamic add;
  dynamic NoI = 0;

  print("||--------------Math'am Al-Mufid--------------||");
  /*print("[1]. Bukhari Ayam");
  stdout.write(
      'A menu of choices of unique Arabic flavors, made from basmati rice,\ncomplemented by special spices that are cool on the tongue + chicken\n\n');
  print("[2]. Bukhari Kambing");
  stdout.write(
      'A menu of choices of unique Arabic flavors, made from basmati rice,\ncomplemented by special spices that are cool on the tongue + goat.\n\n');
  print("[3]. Briyani Ayam");
  stdout.write(
      'A special menu cooked with selected spices from saffron. It\'s even more delicious with healthy pieces of chicken\n\n');
  print("[4]. Briyani Kambing");
  stdout.write(
      'A special menu cooked with selected spices from saffron. It\'s even more delicious with healthy pieces of goat.\n\n');
  print("[5]. Tojin Lahm");
  stdout.write(
      'Macaroni with lahm (meat) sauce, So delicious to eat while warm\n\n');
  print("[6]. Shakshuka");
  stdout.write(
      'Processed eggs, tomatoes and halal spices, this menu is a breakfast menu for Arabs, eaten with ish bread\n\n');
  print("[7]. Onion Rings");
  stdout.write('Onion slices served crispy and eaten with sauce\n\n');
  print("[8]. Shadr Maqlyah");
  stdout.write('Crispy chicken fillet served with gravy and potatoes\n\n');
  print("[9]. Mahhalaby");
  stdout
      .write('Known as Milk Pudding Dessert from Middle Eastern pure milk\n\n');*/

  Map<int, String> foods = {
    1: 'Bukhari Ayam    | RM 30.25',
    2: 'Bukhari Kambing | RM 40.25',
    3: 'Briyani Ayam    | RM 30.25',
    4: 'Briyani Kambing | RM 40.25',
    5: 'Tojin Lahm      | RM 12.25',
    6: 'Shakshuka       | RM 7.65',
    7: 'Onion Rings     | RM 7.50',
    8: 'Shadr Maqlyah   | RM 8.00',
    9: 'Mahhalaby       | RM 5.35',
  };

  foods.forEach((code, food) => print('$code. ${food}'));
  stdout.write('Enter Product Code: ');
  int code = int.parse(stdin.readLineSync()!);

  stdout.write('Enter Quantity: ');
  int quantity = int.parse(stdin.readLineSync()!);

  switch (code) {
    case 1:
      price = 30.25;
      print('Bukhari Ayam [RM $price] X $quantity');
      break;
    case 2:
      //var sum1 = price * quantity;
      price = 40.25;
      print('Bukhari Kambing [RM $price] X $quantity');
      break;
    case 3:
      price = 30.25;
      print('Briyani Ayam [RM $price] X $quantity');
      break;
    case 4:
      price = 40.25;
      print('Briyani Kambing [RM $price] X $quantity');
      break;
    case 5:
      price = 12.25;
      print('Tojin Lahm [RM $price] X $quantity');
      break;
    case 6:
      price = 7.65;
      print('Shakshuka [RM $price] X $quantity');
      break;
    case 7:
      price = 7.50;
      print('Onion Rings [RM $price] X $quantity');
      break;
    case 8:
      price = 8.00;
      print('Shadr Maqlyah [RM $price] X $quantity');
      break;
    case 9:
      price = 5.35;
      print('Mahhalaby [RM $price] X $quantity');
      break;
  }

  stdout.write('Add another order (Y/N): ');
  add = stdin.readLineSync();

  if (add == 'y' || add == 'Y') {
    main();
  } else {
    print('<<--------------------Recipt-------------------->>');
    NoI += quantity;

    print(foods[code]);
    print('Quantity: $quantity');
    print('Number Of Item = RM $NoI');

    subT = price * quantity;
    print('SubTotal = RM $subT');

    stdout.write('Discount(%): ');
    double? disc = double.parse(stdin.readLineSync()!);

    discount = disc / 100 * subT;
    gst = 0.06 * subT;
    print('GST 6% = $gst');

    total = subT - discount + gst;
    print('Total = RM $total');

    print('Thank You!');
  }
}
