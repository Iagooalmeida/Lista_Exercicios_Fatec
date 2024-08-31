/**• 2 - Crie um objeto JSON contendo informações sobre um livro (título, autor, ano de
publicação). Em seguida, adicione um campo "gênero" a esse objeto JSON e, por fim,
imprima o objeto atualizado. */

import 'dart:convert';

String livroJson = '''
{
  "titulo": "O Senhor dos Anéis",
  "autor": "J.R.R. Tolkien",
  "ano_publicacao": 1954
}
''';

void main() {
  Map<String, dynamic> livro = json.decode(livroJson);

  livro['genero'] = 'Fantasia';

  print(json.encode(livro));
}
