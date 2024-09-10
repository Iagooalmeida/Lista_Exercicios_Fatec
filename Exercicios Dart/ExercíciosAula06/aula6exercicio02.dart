/**2 – Crie uma classe chamada Produto com atributos como nome, preço e categoria. Use
construtores nomeados para criar produtos em diferentes categorias, como eletrônicos
e alimentos. */

class Produto {
  String nome;
  double preco;
  String categoria;

  Produto({required this.nome, required this.preco, required this.categoria});
}

void main() {
  Produto eletronico = Produto(nome: 'Smartphone', preco: 2000.00, categoria: 'Eletrônicos');
  Produto alimento = Produto(nome: 'Arroz', preco: 10.00, categoria: 'Alimentos');

  print('Produto: ${eletronico.nome} - Preço: ${eletronico.preco} - Categoria: ${eletronico.categoria}');
  print('Produto: ${alimento.nome} - Preço: ${alimento.preco} - Categoria: ${alimento.categoria}');
}