/**• 5 - Crie uma função que receba uma instância da classe Pessoa (atributos: nome, idade e
altura) e atualize seus atributos idade e altura de acordo com parâmetros passados. */

class Pessoa {
  String nome;
  int idade;
  double altura;

  Pessoa({required this.nome, required this.idade, required this.altura});
}

void atualizarPessoa(Pessoa pessoa, int novaIdade, double novaAltura) {
  pessoa.idade = novaIdade;
  pessoa.altura = novaAltura;
}

void main() {
  Pessoa pessoa = Pessoa(nome: 'João', idade: 30, altura: 1.80);
  print('Nome: ${pessoa.nome} - Idade: ${pessoa.idade} - Altura: ${pessoa.altura}');

  atualizarPessoa(pessoa, 35, 1.85);
  print('Nome: ${pessoa.nome} - Idade: ${pessoa.idade} - Altura: ${pessoa.altura}');
}