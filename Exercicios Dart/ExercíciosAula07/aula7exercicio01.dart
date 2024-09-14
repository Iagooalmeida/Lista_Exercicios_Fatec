/**1 - Crie um programa que represente diferentes tipos de veículos. Comece com uma
classe abstrata Veiculo e, em seguida, crie três subclasses (elas herdam Veiculo)
chamadas Carro, Moto e Aviao. Adicione na classe Veiculo os atributos
anoFabricacao (int), anoModelo (int), cor (String), valor (double) e
combustível (enum) e os métodos acelerar() e frear(). 

• Implemente um método de decolar() e pousar() para a classe Aviao.
• Implemente o método empinar() para a moto.
• Reescreva o método frear() para o avião. Se ele estiver voando exiba a frase "Ligando
o reverso

Crie a interface Vendivel. Esta interface será aplicada nas classes Carro, Moto e Aviao. Essa
interface possui o método vender que recebe como parâmetro apenas o nome do novo
proprietário.

Crie a interface ImpostosVeiculosTerrestres. Esta interface será aplicada nas classes Carro e
Moto. A interface irá possuir os métodos calcularIPVA() e calcularDPVAT(). O cálculo do IPVA
será da seguinte forma: Se o combustível for Gasolina será 4% do valor do veiculo, se for
Etanol será 2% e se for Diesel será 3%. Não adotaremos veículos Flex para simplificar o
exercício. O calculo do DPVAT será um valor fixo de 102.47.

Crie a interface ImpostosVeiculosAeronauticos. Esta interface será aplicada apenas na classe
Aviao. A interface irá possuir o método calcularTaxaANAC(). O cálculo será da seguinte
forma: 1500.00 + 3% do valor do avião.

*/

abstract class Veiculo {
  int anoFabricacao;
  int anoModelo;
  String cor;
  double valor;
  Combustivel combustivel;

  Veiculo({required this.anoFabricacao, required this.anoModelo, required this.cor, required this.valor, required this.combustivel});

  void acelerar();
  void frear();
}

enum Combustivel {
  gasolina,
  etanol,
  alcool,
  diesel,
  eletrico, 
  combustivel_aviacao
}

abstract class Vendivel {
  void vender(String novoProprietario);
}

abstract class ImpostosVeiculosTerrestres {
  void calcularIPVA();
  void calcularDPVAT();
}

abstract class ImpostosVeiculosAeronauticos {
  void calcularTaxaANAC();
}

class Carro extends Veiculo implements Vendivel, ImpostosVeiculosTerrestres {
  Carro({required int anoFabricacao, required int anoModelo, required String cor, required double valor, required Combustivel combustivel}) : 
  super(anoFabricacao: anoFabricacao, anoModelo: anoModelo, cor: cor, valor: valor, combustivel: combustivel);

  @override
  void acelerar() {
    print('Carro acelerando...');
  }

  @override
  void frear() {
    print('Carro freando...');
  }

  @override
  void vender(String novoProprietario) {
    print('Carro vendido para $novoProprietario');
  }

  void calcularIPVA() {
    double ipva = 0;
    switch (combustivel) {
      case Combustivel.gasolina:
        ipva = valor * 0.04;
        break;
      case Combustivel.alcool:
        ipva = valor * 0.02;
        break;
      case Combustivel.diesel:
        ipva = valor * 0.03;
        break;
      default:
        ipva = 0;
    }
    print('IPVA: $ipva');
  }

  void calcularDPVAT() {
    print('DPVAT: 102.47');
  }
}

class Moto extends Veiculo implements Vendivel, ImpostosVeiculosTerrestres {
  Moto({required int anoFabricacao, required int anoModelo, required String cor, required double valor, required Combustivel combustivel}) : 
  super(anoFabricacao: anoFabricacao, anoModelo: anoModelo, cor: cor, valor: valor, combustivel: combustivel);

  @override
  void acelerar() {
    print('Moto acelerando...');
  }

  @override
  void frear() {
    print('Moto freando...');
  }

  void empinar() {
    print('Moto empinando...');
  }

  @override
  void vender(String novoProprietario) {
    print('Moto vendida para $novoProprietario');
  }

  void calcularIPVA() {
    double ipva = 0;
    switch (combustivel) {
      case Combustivel.gasolina:
        ipva = valor * 0.04;
        break;
      case Combustivel.alcool:
        ipva = valor * 0.02;
        break;
      case Combustivel.diesel:
        ipva = valor * 0.03;
        break;
      default:
        ipva = 0;
    }
    print('IPVA: $ipva');
  }

  void calcularDPVAT() {
    print('DPVAT: 102.47');
  }
}

class Aviao extends Veiculo implements Vendivel, ImpostosVeiculosAeronauticos {
  Aviao({required int anoFabricacao, required int anoModelo, required String cor, required double valor, required Combustivel combustivel}) : 
  super(anoFabricacao: anoFabricacao, anoModelo: anoModelo, cor: cor, valor: valor, combustivel: combustivel);

  @override
  void acelerar() {
    print('Avião acelerando...');
  }

  @override
  void frear() {
    print('Ligando o reverso...');
  }

  void decolar() {
    print('Avião decolando...');
  }

  void pousar() {
    print('Avião pousando...');
  }

  @override
  void vender(String novoProprietario) {
    print('Avião vendido para $novoProprietario');
  }

  void calcularTaxaANAC() {
    double taxa = 1500 + (valor * 0.03);
    print('Taxa ANAC: $taxa');
  }
}

void main() {
  Carro carro = Carro(anoFabricacao: 2021, anoModelo: 2022, cor: 'Preto', valor: 50000, combustivel: Combustivel.gasolina);
  carro.acelerar();
  carro.frear();
  carro.vender('João');
  carro.calcularIPVA();
  carro.calcularDPVAT();

  Moto moto = Moto(anoFabricacao: 2021, anoModelo: 2022, cor: 'Vermelho', valor: 20000, combustivel: Combustivel.gasolina);
  moto.acelerar();
  moto.frear();
  moto.empinar();
  moto.vender('Maria');
  moto.calcularIPVA();
  moto.calcularDPVAT();

  Aviao aviao = Aviao(anoFabricacao: 2021, anoModelo: 2022, cor: 'Branco', valor: 500000, combustivel: Combustivel.combustivel_aviacao);
  aviao.acelerar();
  aviao.frear();
  aviao.decolar();
  aviao.pousar();
  aviao.vender('José');
  aviao.calcularTaxaANAC();
}


