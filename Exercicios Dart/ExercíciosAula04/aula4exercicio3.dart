/**3 - Crie uma função que recebe uma lista de números inteiros como parâmetro e
retorna uma nova lista contendo apenas os números pares. */

void main(){
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(listaPares(lista));
}

List<int> listaPares(List<int> lista){
  List<int> pares = [];
  for (var numero in lista){
    if(numero % 2 == 0){
      pares.add(numero);
    }
  }
  return pares;
}