void main() {
  double product1 = 27.80;
  double product2 = 15.35;
  double product3 = 41;
  double product4 = 7;
  double product5 = 33.69;

  double total = product1 + product2 + product3 + product4 + product5;
  double payment = 150;
  double rest = payment - total;

  print("Valor total : R\$$total");
  print("Valor recebido : R\$$payment");
  print("Troco : R\$${rest.toStringAsFixed(2)}");
}
