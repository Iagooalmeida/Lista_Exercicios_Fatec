//Classe abstrata

abstract class Veiculo {
  Veiculo(this.anoFabricacao, this.anoModelo, this.cor, this.valor,
      this.combustivel);

  int anoFabricacao;
  int anoModelo;
  String cor;
  double valor;
  Combustiveis combustivel;

  void acelerar() {
    print("Veículo acelerando");
  }

  void frear() {
    print("Veículo freando");
  }
}

//Enumerador

enum Combustiveis {
  GASOLINA,
  ETANOL,
  DIESEL,
  ELETRICO,
  COMBUSTIVEL_AVIACAO;
}

//Classes

class Carro extends Veiculo implements Vendivel, ImpostosVeiculosTerrestres {
  Carro(super.anoFabricacao, super.anoModelo, super.cor, super.valor,
      super.combustivel);

  @override
  double calcularDPVAT() {
    return 102.47;
  }

  @override
  double calcularIPVA() {
    switch (this.combustivel) {
      case Combustiveis.GASOLINA:
        return this.valor * 0.04;
      case Combustiveis.ETANOL:
        return this.valor * 0.02;
      case Combustiveis.DIESEL:
        return this.valor * 0.03;
      default:
        return 0.0;
    }
  }

  @override
  void vender(String novoProprietario) {
    print("Vendeu o carro para: $novoProprietario");
  }
}

class Moto extends Veiculo implements Vendivel, ImpostosVeiculosTerrestres {
  Moto(super.anoFabricacao, super.anoModelo, super.cor, super.valor,
      super.combustivel);

  void empinar() {
    print("Dando um grau, se a policia ver já era!");
  }

  @override
  double calcularDPVAT() {
    return 102.47;
  }

  @override
  double calcularIPVA() {
    switch (this.combustivel) {
      case Combustiveis.GASOLINA:
        return this.valor * 0.04;
      case Combustiveis.ETANOL:
        return this.valor * 0.02;
      default:
        return 0.0;
    }
  }

  @override
  void vender(String novoProprietario) {
    print("Vendeu a moto para: $novoProprietario");
  }
}

class Aviao extends Veiculo implements Vendivel, ImpostosVeiculosAeronauticos {
  Aviao(super.anoFabricacao, super.anoModelo, super.cor, super.valor,
      super.combustivel);

  bool estaVoando = false;

  void decolar() {
    if (estaVoando) {
      print("Impossivel decolar, ja está voando...");
    } else {
      print("Avião decolando");
      estaVoando = true;
      print("Avião decolou");
    }
  }

  void pousar() {
    if (estaVoando) {
      print("Avião pousando");
      estaVoando = false;
      print("Avião no chão");
    } else {
      print("Impossivel pousar um avião que ja está no chão!");
    }
  }

  @override
  void frear() {
    if (estaVoando) {
      print("Ligando o reverso");
    } else {
      print("Avião está no chão, freando ele mesmo assim");
    }
  }

  @override
  double calcularTaxaANAC() {
    return 1500.00 + this.valor * 0.03;
  }

  @override
  void vender(String novoProprietario) {
    print("Vendeu o avião para: $novoProprietario");
  }
}

//Interfaces

abstract class Vendivel {
  void vender(String novoProprietario);
}

abstract class ImpostosVeiculosTerrestres {
  double calcularIPVA();
  double calcularDPVAT();
}

abstract class ImpostosVeiculosAeronauticos {
  double calcularTaxaANAC();
}

//Método Main

void main() {
  Carro gol = Carro(1994, 1995, "Prata", 10000.00, Combustiveis.GASOLINA);
  Carro escort = Carro(1990, 1990, "Vermelho", 12000.00, Combustiveis.ETANOL);
  Moto titan = Moto(2019, 2019, "Preto", 13800.00, Combustiveis.GASOLINA);
  Aviao boeing747 =
      Aviao(2018, 2018, "Branco", 1000000, Combustiveis.COMBUSTIVEL_AVIACAO);

  gol.acelerar();
  titan.empinar();
  boeing747.decolar();
  boeing747.decolar();
  boeing747.frear();
  boeing747.pousar();
  boeing747.pousar();
  boeing747.frear();
  titan.frear();
  print("IPVA do Gol: ${gol.calcularIPVA()}");
  print("IPVA do Escort: ${escort.calcularIPVA()}");
  titan.vender("Rochelle");
  print("Taxa da ANAC do Boing 747: ${boeing747.calcularTaxaANAC()}");
}
