import 'dart:io';

abstract class User {
  String? name;
  String? email;
  String? password;

  bool login() {
    print("Enter email: ");
    String? inpEmail = stdin.readLineSync();
    print("Enter password: ");
    String? inpPass = stdin.readLineSync();
    if (inpEmail == this.email && inpPass == this.password) {
      return true;
    }
    return false;
  }
}

class Admin extends User {
  String? licence;

  Admin(String? name, String? email, String? password) {
    this.name = name;
    this.email = email;
    this.password = password;
  }

  void showProfile() {
    print("Name: ${this.name} \nEmail: ${this.email}");
  }
}

class Moderator extends User {
  Map? permission;

  Moderator(String? name, String? email, String? password) {
    this.name = name;
    this.email = email;
    this.password = password;
  }
}

void main() {
  // Admin user1 = Admin("Akkas", "a@a.a", "1111");

  // Moderator mod1 = Moderator("Karim", "k@k.k", "1111");

  // print(user1.login());

  User x;

  x = Moderator("namdasdfe", "email", "password");
  x.login();
}
