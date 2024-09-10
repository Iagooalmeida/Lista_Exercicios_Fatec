/**4 - Crie uma classe chamada Retângulo com atributos largura e altura. Crie um getter
chamado área que retorna a área do retângulo e um setter chamado redimensionar que
atualiza a largura e altura simultaneamente. */

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double get area => largura * altura;

  set redimensionar(double novaLargura) {
    largura = novaLargura;
    altura = novaLargura;
  }
}

void main() {
  Retangulo retangulo = Retangulo(5, 10);
  print('Área: ${retangulo.area}');

  retangulo.redimensionar = 7;
  print('Área: ${retangulo.area}');
}