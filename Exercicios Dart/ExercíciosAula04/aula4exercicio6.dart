/**6 - Crie uma função que recebe uma lista de números inteiros e uma função de filtro
como parâmetros. A função de filtro deve ser aplicada a cada elemento da lista, e a função
principal deve retornar uma nova lista contendo apenas os elementos que passaram no
filtro. */

List<int> filtrarLista(List<int> numeros, bool Function(int) filtro) {
  List<int> resultado = [];

  for (var numero in numeros) {
    if (filtro(numero)) {
      resultado.add(numero);
    }
  }

  return resultado;
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> numerosPares = filtrarLista(numeros, (num) => num % 2 == 0);

  print(numerosPares);
}