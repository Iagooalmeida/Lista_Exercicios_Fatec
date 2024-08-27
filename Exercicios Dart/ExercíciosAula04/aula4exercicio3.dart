/**3 - Crie uma função que recebe uma lista de números inteiros como parâmetro e
retorna uma nova lista contendo apenas os números pares. */

void main(){
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(listaPares(lista));
}

List<int> listaPares(List<int> lista){
  List<int> pares = [];
  for(int i = 0; i < lista.length; i++){
    if(lista[i] % 2 == 0){
      pares.add(lista[i]);
    }
  }
  return pares;
}