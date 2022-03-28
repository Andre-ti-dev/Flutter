void main() {
  int n = 5, sequence = 2, aux = 3, sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += sequence;
    print(sequence);
    sequence += aux;
    aux += 2;
  }
  print('SUM: $sum');
}
