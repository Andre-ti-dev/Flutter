void main() {
  double weight = 100, height = 1.76;
  String gender = 'm';

  double result = weight / (height * 2);
  int genderValue = gender == 'm' ? 0 : 1;

  if (result < 20 - genderValue) {
    print('Abaixo do peso: ${result.toStringAsFixed(2)}');
  } else if (result > (20 - genderValue) && result < (24 - genderValue)) {
    print('Peso ideal: ${result.toStringAsFixed(2)}');
  } else {
    print('Acima do peso: ${result.toStringAsFixed(2)}');
  }
}
