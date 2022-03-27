void main() {
  double a = 0.5, v0 = 0, v;
  int t = 5;

  v = v0 + a * t;

  if (v <= 40) {
    print('Veiculo muito lento: ($v m/s)');
  } else if (v > 40 && v <= 60) {
    print('Velocidade permitida ($v m/s)');
  } else if (v > 60 && v <= 80) {
    print('Velocidade de cruzeiro ($v m/s)');
  } else if (v > 80 && v <= 120) {
    print('Veiculo rápido ($v m/s)');
  } else {
    print('Veiculo muito rápido ($v m/s)');
  }
}
