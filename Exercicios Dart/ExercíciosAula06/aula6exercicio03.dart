/**3 - Crie uma classe Matematica com um método estático que calcule a soma de dois
números inteiros */

class Matematica {
  static int somar(int a, int b) {
    return a + b;
  }
}

void main() {
  print('Soma: ${Matematica.somar(5, 10)}');
}
