void main() {
  double weight = 98.5;
  double height = 1.76;

  double result = weight / height * 2;

  if (result >= 20 && result < 25) {
    print("Você está no seu peso ideal");
  } else {
    print("Você não está no seu peso ideal");
  }
}
