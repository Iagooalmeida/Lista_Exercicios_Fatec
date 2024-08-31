class SaldoInsuficienteException implements Exception {
  String get mensagem => 'Saldo insuficiente';
}

class ContaBancaria {
  double saldo = 0;

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor > saldo) {
      throw SaldoInsuficienteException();
    }
    saldo -= valor;
  }
}

void main() {
  ContaBancaria conta = ContaBancaria();
  conta.depositar(100);

  try {
    conta.sacar(200);
  } catch (e) {
    if (e is SaldoInsuficienteException) {
      print('Erro: ${(e).mensagem}');
    } else {
      print('Erro desconhecido');
    }
  }
}