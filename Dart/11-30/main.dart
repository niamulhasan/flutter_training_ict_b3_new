void main() {
  // List<int> myList = [22, 44, 55];
  // Map<String, int> myMap = {"num_one": 22, "age": 44, "distance": 55};

  // List myList2 = [
  //   3,
  //   [22, 44],
  //   0,
  //   "Hello",
  //   6,
  //   3
  // ];
  // print(myList2[1][1]);

  List<Map<String, dynamic>> users = [
    {"name": "Rahim", "age": 44, "email": "rahim@rmain.com"},
    {"name": "Karim", "age": 23, "email": "karim@kmial.com"},
    {"name": "Akkas", "age": 32, "email": "akkas@amial.com"},
    {"name": "Rahim", "age": 44, "email": "rahim@rmain.com"},
    {"name": "Karim", "age": 23, "email": "karim@kmial.com"},
    {"name": "Akkas", "age": 32, "email": "akkas@amial.com"},
    {"name": "Rahim", "age": 44, "email": "rahim@rmain.com"},
    {"name": "Karim", "age": 23, "email": "karim@kmial.com"},
    {"name": "Akkas", "age": 32, "email": "akkas@amial.com"},
  ];

  // for (int i = 0; i < users.length; i++) {
  //   print("Profile of ${users[i]["name"]}");
  //   print("-----------");
  //   print("    Name: ${users[i]["name"]}");
  //   print("    Age: ${users[i]["age"]}");
  //   print("    Email: ${users[i]["email"]}");
  //   print("----------\n\n");
  // }

  for (var data in users) {
    print(data["email"]);
  }
}
