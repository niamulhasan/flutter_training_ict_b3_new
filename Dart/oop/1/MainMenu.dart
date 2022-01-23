import 'dart:io';

class MainMenu {
  static String? mainMenu() {
    print("1.Send Money");
    print("2.Cashout");
    print("3.CheckBalance");
    print("4.Payment");
    print("Choose an Option:");

    return stdin.readLineSync();
  }
}
