import 'dart:io';

class MainMenu {
  static String? show() {
    print(
        " 1. Send Money \n 2. Mobile Recharge \n 3. Payment \n 4. Cahsout \n 5. Pay Bill");
    print("Choose an option:");
    return stdin.readLineSync();
  }
}
