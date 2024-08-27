/*5 - Desenvolva uma função que recebe uma string como argumento e conta quantas
palavras únicas (sem repetição) estão presentes nessa string. Considere que as palavras
são separadas por espaços.
 */

void main(){
  String texto = "O rato roeu a roupa do rei de Roma";
  print(contaPalavras(texto));
}

int contaPalavras(String texto){
  List<String> palavras = texto.split(" ");
  List<String> palavrasUnicas = [];
  for(var palavra in palavras){
    if(!palavrasUnicas.contains(palavra)){
      palavrasUnicas.add(palavra);
    }
  }

  return palavrasUnicas.length;
}