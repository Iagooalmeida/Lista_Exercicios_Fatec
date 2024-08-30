/* 2 - Crie uma função que recebe uma lista de números inteiros como parâmetro e
retorna o maior valor presente na lista. */

void main(){
  List<int> lista = [1, 2, 3, 4, 5];
  print(maiorValor(lista));
}

int maiorValor(List<int> lista){
  int maior = lista[0];
  for (var numero in lista){
    if(numero > maior){
      maior = numero;
    }
    
  }
  return maior;

  // return lista.reduce((value, element) => value > element ? value : element);
}