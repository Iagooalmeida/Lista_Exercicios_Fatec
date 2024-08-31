/* 1 - Crie um arquivo JSON com uma lista de objetos representando produtos (por
exemplo, nome, preço, categoria). Em seguida, escreva um programa em Dart que leia
esse arquivo JSON e exiba os produtos no console. */

import 'dart:io';
import 'dart:convert';


void main() async {
  final File file = File('ExercíciosAula05/catalogo_produtos.json');
  final contents = await file.readAsString();

  List<dynamic> produtos = json.decode(contents);

  for (var produto in produtos) {
    print('Nome: ${produto['nome']}');
    print('Preço: R\$ ${produto['preço']}');
    print('Categoria: ${produto['categoria']}');
    print('---');
  }
}


