import "MenuItems.dart";

class Router {
  static void route(String? choice) {
    if (choice == "1") {
      MenuItem.sendMoney();
    }

    if (choice == "2") {
      MenuItem.cashOut();
    }

    if (choice == "3") {
      MenuItem.checkBalance();
    }
    if (choice == "4") {
      MenuItem.payment();
    }
  }
}
