import 'dart:math';

String gerarSenhaAleatoria(int tamanho,
    {bool usarCaracteresEspeciais = false}) {
  String caracteres =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  if (usarCaracteresEspeciais) {
    caracteres += "!@#\$%&*()_-+=[]{}?/\\£¢";
  }

  Random aleatorio = Random();
  String senha = "";

  for (int i = 0; i < tamanho; i++) {
    int indice = aleatorio.nextInt(caracteres.length);
    senha += caracteres[indice];
  }

  return senha;
}

void main() {
  String senhaAleatoria = gerarSenhaAleatoria(4, usarCaracteresEspeciais: true);
  print("Senha aleatória: $senhaAleatoria");
  senhaAleatoria = gerarSenhaAleatoria(8);
  print("Senha aleatória: $senhaAleatoria");
  senhaAleatoria = gerarSenhaAleatoria(25, usarCaracteresEspeciais: true);
  print("Senha aleatória: $senhaAleatoria");
}
