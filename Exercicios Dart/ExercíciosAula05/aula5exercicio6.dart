/** 6 - Defina um enum chamado DiasDaSemana que represente os dias da semana (por
exemplo, segunda-feira, terça-feira, etc.). Em seguida, escreva uma função que recebe um
valor do tipo DiasDaSemana como argumento e imprime o dia correspondente. */

enum DiasDaSemana {
  segunda,
  terca,
  quarta,
  quinta,
  sexta,
  sabado,
  domingo
}

void imprimirDia(DiasDaSemana dia) {
  switch (dia) {
    case DiasDaSemana.segunda:
      print('Segunda-feira');
      break;
    case DiasDaSemana.terca:
      print('Terça-feira');
      break;
    case DiasDaSemana.quarta:
      print('Quarta-feira');
      break;
    case DiasDaSemana.quinta:
      print('Quinta-feira');
      break;
    case DiasDaSemana.sexta:
      print('Sexta-feira');
      break;
    case DiasDaSemana.sabado:
      print('Sábado');
      break;
    case DiasDaSemana.domingo:
      print('Domingo');
      break;
  }
}

void main() {
  imprimirDia(DiasDaSemana.segunda);
  imprimirDia(DiasDaSemana.terca);
  imprimirDia(DiasDaSemana.quarta);
  imprimirDia(DiasDaSemana.quinta);
  imprimirDia(DiasDaSemana.sexta);
  imprimirDia(DiasDaSemana.sabado);
  imprimirDia(DiasDaSemana.domingo);
}