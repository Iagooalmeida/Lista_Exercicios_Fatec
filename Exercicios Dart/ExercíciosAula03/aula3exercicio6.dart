import 'dart:io';

void main() {
  print("Informe o primeiro lado do triângulo:");
  double ladoA = double.parse(stdin.readLineSync()!);

  print("Informe o segundo lado do triângulo:");
  double ladoB = double.parse(stdin.readLineSync()!);

  print("Informe o terceiro lado do triângulo:");
  double ladoC = double.parse(stdin.readLineSync()!);

  if (trianguloValido(ladoA, ladoB, ladoC)) {
    String classificacao = classificarTriangulo(ladoA, ladoB, ladoC);
    print("O triângulo é $classificacao.");
  } else {
    print("Os valores dos lados não formam um triângulo válido.");
  }
}

bool trianguloValido(double a, double b, double c) {
  return a < b + c && b < a + c && c < a + b;
}

String classificarTriangulo(double a, double b, double c) {
  if (a == b && b == c) {
    return "equilátero";
  } else if (a == b || b == c || c == a) {
    return "isósceles";
  } else {
    return "escaleno";
  }
}
