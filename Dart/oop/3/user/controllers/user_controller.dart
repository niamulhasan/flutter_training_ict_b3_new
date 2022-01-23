import 'dart:ffi';
import 'dart:io';

import '../models/user_model.dart';

class UserController {
  static User register() {
    print("Input Name: ");
    String? inpName = stdin.readLineSync();
    print("Input E-mail: ");
    String? inpEmail = stdin.readLineSync();
    print("Input Password: ");
    String? inpPassword = stdin.readLineSync();

    return User(inpName, inpEmail, inpPassword);
  }

  static void login(List<User> allUsers) {
    print("Input Email:");
    String? inpEmail = stdin.readLineSync();
    print("Input Password: ");
    String? inpPassword = stdin.readLineSync();

    for (User user in allUsers) {
      if (user.email == inpEmail) {
        if (user.password == inpPassword) {
          print("Login Successfull");
          //Profile View
          return;
        }
      }
    }
    print("User doesn't exists");
  }
}
