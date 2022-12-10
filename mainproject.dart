import 'dart:io';
import 'input.dart';

void main() {
  Code a = new Code();
  a.menu();
  a.input();

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
