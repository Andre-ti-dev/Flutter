void main() {
  final numbers = [1, 5, 9, 7, 8, 10, 4, 2, 6, 3];
  int greaterIndex = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[greaterIndex] < numbers[i]) greaterIndex = i;
  }
  print(numbers[greaterIndex]);
}
