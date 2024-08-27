/* 2 - Crie uma função que recebe uma lista de números inteiros como parâmetro e
retorna o maior valor presente na lista. */

void main(){
  List<int> lista = [1, 2, 3, 4, 5];
  print(maiorValor(lista));
}

int maiorValor(List<int> lista){
  int maior = lista[0];
  for(int i = 0; i < lista.length; i++){
    if(lista[i] > maior){
      maior = lista[i];
    }
  }
  return maior;
}