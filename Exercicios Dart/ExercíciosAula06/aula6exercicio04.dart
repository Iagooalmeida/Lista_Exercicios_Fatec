/**4 - Crie uma classe chamada Retângulo com atributos largura e altura. Crie um getter
chamado área que retorna a área do retângulo e um setter chamado redimensionar que
atualiza a largura e altura simultaneamente. */

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double get area => largura * altura;

  // double get area {
  //   return largura * altura;
  // }

  set redimensionar(Map<String, double> dimensoes) {
    largura = dimensoes['largura']!;
    altura = dimensoes['altura']!;
  }
}

void main() {
  Retangulo retangulo = Retangulo(5, 10);
  print('Área inicial: ${retangulo.area}');

  retangulo.redimensionar = {'largura': 7, 'altura': 7};
  print('Área após redimensionar: ${retangulo.area}');
}
