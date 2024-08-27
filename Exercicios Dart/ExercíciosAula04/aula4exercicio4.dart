/*4 - Crie uma função que recebe uma lista de números inteiros como parâmetro e
retorna a média dos valores presentes na lista. */

void main(){
  List<int> lista = [1, 2, 3, 4, 5];
  print(mediaLista(lista));
}

double mediaLista(List<int> lista){
  double media = 0;
  for(int i = 0; i < lista.length; i++){
    media += lista[i];
  }
  return media / lista.length;
}