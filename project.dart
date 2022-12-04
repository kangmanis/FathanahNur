import 'dart:html';
import 'dart:io';

void main() {
  querySelector('#RipVanWinkle')!.text = 'zahra test';
  dynamic NumOfItem;
  dynamic quantity = 0;
  dynamic total;
  dynamic discount;
  dynamic discPrice;
  dynamic subTotal;
  dynamic gst = 0.06;
  dynamic total_gst;

  final product;
  stdout.write('Product Name: ');
  product = stdin.readLineSync();

  stdout.write('Product Description: ');
  final desc;
  desc = stdin.readLineSync(); //get input

  stdout.write('Product Price: ');
  double? price = double.parse(stdin.readLineSync()!);

  stdout.write('Product Quantity: ');
  int? quan = int.parse(stdin.readLineSync()!);

  stdout.write('Discount: ');
  double? disc = double.parse(stdin.readLineSync()!);

  quantity += quan;
  NumOfItem = quantity;
  total = quantity * price;
  discount = disc / 100 * total;
  discPrice = discount;
  subTotal = total - discPrice;
  gst = gst * total;
  total_gst = gst + subTotal;

  print('\nProduct: $product (Description: $desc) | RM $price \n');
  stdout.write('Product Quantity: $quantity \n');
  stdout.write('Number Of Item: $NumOfItem --gjls\n'); //still Xtak tau
  stdout.write('Product Total: RM $total \n');
  print('Discount: $disc% = (-)RM $discPrice');
  stdout.write('Pay: RM $subTotal\n');
  stdout.write('GST 6%: RM$gst\n');
  stdout.write('Total Payment with GST : RM$total_gst');
}
