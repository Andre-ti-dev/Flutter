void main() {
  int a = 1, b = 3;

  print(a);
  print(a);
  while (a <= 33) {
    print(a);
    a = b;
    b = b - 1 + b;
  }
}
