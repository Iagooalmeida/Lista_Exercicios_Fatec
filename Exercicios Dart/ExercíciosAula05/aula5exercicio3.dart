/*3 - Crie um programa em Dart que analise um JSON contendo informações de um
usuário, incluindo nome, idade e endereço. Em seguida, extraia e imprima a idade desse
usuário. */

import 'dart:convert';

String usuarioJson() {
  return '''
{
  "nome": "Luffy",
  "idade": 19,
  "endereco": {
    "rua": "Rua dos Piratas",
    "numero": 1
  }
}
''';
}

void main(){
  Map<String, dynamic> Piratas = jsonDecode(usuarioJson());
  print('Nome: ${Piratas['nome']}');
  print('Idade: ' + Piratas['idade'].toString() + ' anos');
}