/**7 - Crie uma função que recebe uma lista de palavras como parâmetro e retorna um
mapa onde as chaves são as palavras únicas da lista e os valores são a contagem de vezes
que cada palavra aparece. */

Map<String, int> contarPalavras(List<String> palavras) {
  Map<String, int> contagem = {};

  for (var palavra in palavras) {
    if (contagem.containsKey(palavra)) {
      contagem[palavra] = contagem[palavra]! + 1;
    } else {
      contagem[palavra] = 1;
    }
  }

  return contagem;
}

void main() {
  List<String> listaDePalavras = ['maçã', 'banana', 'maçã', 'laranja', 'banana', 'maçã'];

  Map<String, int> resultado = contarPalavras(listaDePalavras);
  print(resultado); 
}