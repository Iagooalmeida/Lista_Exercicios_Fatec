/*5 - Desenvolva uma função que recebe uma string como argumento e conta quantas
palavras únicas (sem repetição) estão presentes nessa string. Considere que as palavras
são separadas por espaços.
 */

import 'dart:io';

void main(){
  stdout.write("Digite um texto: ");

  String? texto = stdin.readLineSync();
  
  texto = texto?.replaceAll(RegExp(r'[,.]'), '') ?? '';
  texto = texto.toLowerCase();
  print(contaPalavras(texto));
}

int contaPalavras(String texto){
  List<String> palavras = texto.split(" ");

  List<String> palavrasUnicas = palavras.toSet().toList();

  return palavrasUnicas.length;
}

/**Metodo 2
 * int contaPalavras(String texto){
  List<String> palavras = texto.split(" ");
  // List<String> palavrasUnicas = [];
  // for(var palavra in palavras){
  //   if(!palavrasUnicas.contains(palavra)){
  //     palavrasUnicas.add(palavra);
  //   }
  // }
  return palavrasUnicas.length;
}

 */