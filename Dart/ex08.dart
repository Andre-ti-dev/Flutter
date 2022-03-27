void main() {
  int n1 = 4, n2 = 3, n3 = 7;

  if ((n1 + n2) > n3 || (n1 + n3) > n2 || (n2 + n3) > n1) {
    if (n1 == n2 && n2 == n3) {
      print("Equilatero");
    } else if (n1 != n2 && n2 != n3) {
      print("Escaleno");
    } else if (n1 == n2 || n2 == n3 || n1 == n3) {
      print("Isósceles");
    }
  } else {
    print("Não é um triangulo");
  }
}
