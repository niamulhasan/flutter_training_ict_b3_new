import 'dart:io';

void main() {
  print("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age <= 12) {
    print("Kid");
  } else if (age <= 18) {
    print("Teen");
  } else {
    print("Adult");
  }
}
