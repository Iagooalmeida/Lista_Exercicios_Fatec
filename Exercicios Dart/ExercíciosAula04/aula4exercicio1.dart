// 1 - Crie uma função que recebe uma lista de números inteiros como parâmetro e
// retorna a soma de todos os elementos da lista.


void main(){
  List<int> lista = [1, 2, 3, 4, 5];
  print(somaLista(lista));
}

int somaLista(List<int> lista){
  int soma = 0;
  for(int i = 0; i < lista.length; i++){
    soma += lista[i];
  }
  return soma;
}