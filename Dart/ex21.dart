void main() {
  Cliente cliente1 = Cliente("André");
  Cliente cliente2 = Cliente("Vitória");

  ContaPoupanca nubankoCC1 = ContaPoupanca(100.0, cliente1);
  ContaCorrente nubankoCC2 = ContaCorrente(200.0, cliente2, 150.0);

  nubankoCC1.consultarSaldo();
  nubankoCC2.consultarSaldo();

  nubankoCC2.deposito(300.0);
  nubankoCC2.saque(1300.0);
  nubankoCC2.transferencia(nubankoCC1, 250.0);
  nubankoCC1.consultarSaldo();
}

abstract class Conta {
  double saldo;
  Cliente cliente;

  Conta(this.saldo, this.cliente);

  void saque(double valor) {
    if (this.saldo < valor)
      return print(
          "[🧨] Saldo insuficiente: R\$${this.saldo.toStringAsFixed(2)}");

    this.saldo -= valor;
    print(
        "[🚀] Saque realizado. Obrigado por utilizar o Nubanko ${cliente.nome}");
  }

  void deposito(double valor) {
    this.saldo += valor;
    print(
        "[🚀] Deposito realizado. Obrigado por utilizar o Nubanko ${cliente.nome}");
  }

  void transferencia(Conta conta, double valor) {
    if (this.saldo < valor)
      return print(
          "[🧨] Saldo insuficiente: R\$${this.saldo.toStringAsFixed(2)} ");

    this.saldo -= valor;
    conta.saldo += valor;

    print(
        "[🚀] Transferência realizada. Obrigado por utilizar o Nubanko ${cliente.nome}");
  }

  void consultarSaldo() {
    print(
        "[🚀] ${cliente.nome} o seu saldo é : R\$${this.saldo.toStringAsFixed(2)}");
  }
}

class ContaCorrente extends Conta {
  double credito;
  ContaCorrente(saldo, cliente, this.credito) : super(saldo, cliente);

  void pagarComCredito(double valor) {
    double juros = valor * 0.03;
    double total = valor + juros;
    if (credito < total)
      return print(
          "[🧨] Crédito insuficiente R\$${this.credito.toStringAsFixed(2)}");

    credito -= total;

    print(
        "[🚀] Pagamento realizado. Obrigado por utilizar o Nubanko ${cliente.nome}");
  }
}

class ContaPoupanca extends Conta {
  int saquesGratis = 2;
  ContaPoupanca(saldo, cliente) : super(saldo, cliente);

  @override
  void saque(double valor) {
    if (saquesGratis <= 0) valor += valor * 0.3;
    super.saque(valor);
    saquesGratis--;
  }
}

class Cliente {
  String nome;
  Cliente(this.nome);
}
