String avaliarNota(double? nota) {
  if (nota == null) {
    return "Nota não informada";
  } else if (nota >= 6.0) {
    return "Aprovado";
  } else if (nota >= 4.0) {
    return "Recuperação";
  } else {
    return "Reprovado";
  }
}

void main() {
  print("Resultado: ${avaliarNota(8.0)}");
  print("Resultado: ${avaliarNota(5.0)}");
  print("Resultado: ${avaliarNota(null)}");
  print("Resultado: ${avaliarNota(2.5)}");
}
