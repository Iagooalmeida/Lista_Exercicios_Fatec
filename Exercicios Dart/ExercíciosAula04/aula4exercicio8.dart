/*8 - Crie um mapa que armazene palavras em inglês como chaves e suas traduções em
português como valores. Crie uma função que recebe uma palavra em inglês como
parâmetro e retorna a tradução em português, caso exista, caso contrário retorne uma
mensagem "Tradução não encontrada". Para testes utilize o seguinte mapa: 

• Map<String, String> dicionario = {
• "apple"
: "maçã",
• "banana": "banana",
• "
orange
"
: "laranja",
• "avocado": "abacate",
• "strawberry"
: "morango",
• "pineaple"
: "abacaxi"
• };

*/

Map<String, String> dicionario = {
  "apple": "maçã",
  "banana": "banana",
  "orange": "laranja",
  "avocado": "abacate",
  "strawberry": "morango",
  "pineaple": "abacaxi"
};

String traduzir(String palavra){
  if(dicionario.containsKey(palavra)){
    return dicionario[palavra]!;
  }else{
    return "Tradução não encontrada";
  }
}

void main(){
  print(traduzir("apple"));
  print(traduzir("banana"));
  print(traduzir("orange"));
  print(traduzir("avocado"));
  print(traduzir("strawberry"));
  print(traduzir("pineaple"));
  print(traduzir("grape"));
}