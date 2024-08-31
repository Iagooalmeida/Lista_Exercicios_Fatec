/*4 - Crie uma função que divida dois números e lide com a exceção quando um divisor
for igual a zero. Faça um programa que chame essa função e imprima uma mensagem
apropriada em caso de exceção */

import 'dart:io';

void main() {
  stdout.write('Digite o primeiro número: ');
  double? num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo número: ');
  double? num2 = double.parse(stdin.readLineSync()!);

  try {
    print(dividir(num1, num2));
  } catch (e) {
    print('Erro: $e');
  }
}

double dividir(double a, double b) {
  if (b == 0) {
    throw Exception('Divisão por zero');
  }
  return a / b;
}