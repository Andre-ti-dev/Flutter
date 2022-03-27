void main() {
  int a = 1, b = 0;

  while (b <= 13) {
    print(b);
    b = a + b;
    a = b - a;
  }
}
