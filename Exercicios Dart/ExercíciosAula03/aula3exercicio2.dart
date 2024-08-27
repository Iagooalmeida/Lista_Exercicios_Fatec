bool numeroPrimo(int numero) {
  if (numero <= 1) {
    return false; // Números menores ou iguais a 1 não são primos
  }
  for (int i = 2; i < numero; i++) {
    if (numero % i == 0) {
      return false; // Se o número for divisível por algum valor entre 2 e próprio número, não é primo
    }
  }
  return true; // Se não foi divisível por nenhum valor, é primo
}

void main() {
  int entrada = 1447;
  if (numeroPrimo(entrada)) {
    print("$entrada é um número primo.");
  } else {
    print("$entrada não é um número primo.");
  }
}
