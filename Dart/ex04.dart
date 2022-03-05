void main() {
  double dolarPriceBRL = 5.06;
  double dolarQuantity = 97.50;
  double convertion = dolarQuantity * dolarPriceBRL;

  print(
      "O valor de \$$dolarQuantity é igual a R\$${convertion.toStringAsFixed(2)}");
}
