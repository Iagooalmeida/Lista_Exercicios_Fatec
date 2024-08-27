double calcularPrecoFinal(double precoBase,
    [double descontoFixo = 0.0, double descontoPercentual = 0.0]) {
  double precoComDesconto = precoBase - descontoFixo;
  precoComDesconto -= precoComDesconto * descontoPercentual / 100;
  return precoComDesconto;
}

void main() {
  double precoFinal = calcularPrecoFinal(100.00, 5.00, 10.00);
  print("Preço final do produto: R\$${precoFinal.toStringAsFixed(2)}");
  double precoFinal2 = calcularPrecoFinal(300.00);
  print("Preço final do produto: R\$${precoFinal2.toStringAsFixed(2)}");
}
