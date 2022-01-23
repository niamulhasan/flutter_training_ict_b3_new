import 'views/SubMenus.dart';

class Router {
  static void route(String? choice) {
    if (choice == "1") {
      SubMenus.sendMoney();
    } else if (choice == "2") {
      SubMenus.recharge();
    } else if (choice == "3") {
      SubMenus.payment();
    } else if (choice == "4") {
      SubMenus.cashOut();
    } else if (choice == "5") {
      SubMenus.payBill();
    } else if (choice == "6") {
      SubMenus.checkBalance();
    }
  }
}
