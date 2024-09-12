/** 1 - Crie uma classe chamada ContaBancaria com um saldo inicial de 100.00. Adicione um
getter e um setter para o saldo e garanta que o saldo não seja negativo.
 */

class ContaBancaria {
  double _saldo = 100.00; 

  double get saldo => _saldo;

  set saldo(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldo = novoSaldo;
    } else {
      print('Saldo não pode ser negativo');
    }
  }
}

void main() {
  ContaBancaria conta = ContaBancaria();
  print('Saldo inicial: ${conta.saldo}');

  conta.saldo = 200;
  print('Saldo após atualização: ${conta.saldo}');

  conta.saldo = -200;
  print('Saldo após tentativa de atualização negativa: ${conta.saldo}');
}
