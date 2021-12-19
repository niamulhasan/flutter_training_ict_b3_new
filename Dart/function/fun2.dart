int a = 10;

int add(int a, int b) {
  return a + b;
}

int c = a + add(10, 10);

void main() {
  print("Boo ${c}");
}
