import 'dart:io';

import 'user/controllers/user_controller.dart';
import 'user/models/user_model.dart';
import 'user/router.dart';

void main() {
  List<User> allUsers = [];

  while (true) {
    // print("\x1B[2J\x1B[0;0H");
    printObs(allUsers);
    print(" == User Menu == \n 1. Login. \n 2. Register \nChoose One: ");
    String? choice = stdin.readLineSync();

    Router.route(choice, allUsers);
  }
}

void printObs(List<User> users) {
  for (User user in users) {
    print(user.email);
  }
}
