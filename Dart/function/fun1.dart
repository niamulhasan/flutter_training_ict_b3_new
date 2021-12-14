void greet({
  required String msg,
  required int count,
}) {
  for (int i = 0; i < count; i++) {
    print("$msg");
  }
}

void main() {
  greet(
    msg: "Good morning!",
    count: 2,
  );
  greet(
    count: 14,
    msg: "Hello there",
  );
}
