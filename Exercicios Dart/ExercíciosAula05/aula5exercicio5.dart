/** 5 - Defina uma classe de exceção personalizada chamada SaldoInsuficienteException que
representa uma situação em que uma conta bancária não tem saldo suficiente para uma
transação. Crie uma função que simule uma transação bancária e lance essa exceção
quando o saldo for insuficiente.Trate a exceção e imprima uma mensagem informativa. */

class SaldoInsuficienteException implements Exception {
  final String mensagem;

  SaldoInsuficienteException([this.mensagem = 'Saldo insuficiente']);

  @override
  String toString() => mensagem;
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
    print('Saque efetuado com sucesso');
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