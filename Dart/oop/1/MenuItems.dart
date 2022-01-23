import 'dart:io';

class MenuItem {
  static void sendMoney() {
    print("=== Send Money ===");
    print("Enter Number: ");
    String? number = stdin.readLineSync();
    print("Enter Amount: ");
    String? amount = stdin.readLineSync();
    print("Successfully transfered $amount taka to $number");
  }

  static void cashOut() {
    print("=========Cashout=========");
    print("Enter Number:");
    String? number = stdin.readLineSync();
    print("Enter Amount:");
    String? amount = stdin.readLineSync();
    print("Successfully Transfered $amount to $number");
  }

  static void checkBalance() {
    print("========CheckBalance=========");
    print("Enter Your Pin");
    String? pin = stdin.readLineSync();
    if (pin == "1234") {
      print("Your Balance is : 00000");
    } else {
      print("You Entered Wrong PIN");
    }
  }

  static void payment() {}
}
