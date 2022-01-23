import 'controllers/user_controller.dart';

class Router {
  static void route(String? choice, dynamic args) {
    if (choice == "1") {
      UserController.login(args);
    } else if (choice == "2") {
      args.add(UserController.register());
    }
  }
}
