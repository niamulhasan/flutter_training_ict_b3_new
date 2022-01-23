import 'dart:ffi';
import 'dart:io';

class SubMenus {
  static void sendMoney() {
    print("Enter a Number: ");
    String? number = stdin.readLineSync();
    print("Enter an amount: ");
    String? amount = stdin.readLineSync();
    print("$amount Money has been sent to $number");
  }

  static void recharge() {
    print("Enter a Number: ");
    String? number = stdin.readLineSync();
    print("Enter an amount: ");
    String? amount = stdin.readLineSync();
    print("$amount Taka has been recharged to $number");
  }

  static void payment() {
    print("Enter a Number: ");
    String? number = stdin.readLineSync();
    print("Enter an amount: ");
    String? amount = stdin.readLineSync();
    print("$amount Taka payment has been made to to $number");
  }

  static void cashOut() {
    print("Enter a Number: ");
    String? number = stdin.readLineSync();
    print("Enter an amount: ");
    String? amount = stdin.readLineSync();
    print("$amount Taka has been cashed out from $number");
  }

  static void payBill() {
    print("Enter a Number: ");
    String? number = stdin.readLineSync();
    print("Enter an amount: ");
    String? amount = stdin.readLineSync();
    print("$amount payment made to to $number");
  }

  static void checkBalance() {}
}
