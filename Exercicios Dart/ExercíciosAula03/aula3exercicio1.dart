import 'dart:io';

void main() {
  print("Informe a duração do evento em segundos: ");
  int duracaoEvento = int.parse(stdin.readLineSync()!);
  converterDuracao(duracaoEvento);
}

void converterDuracao(int duracaoSegundos) {
  // 1 hora = 3600 segundos
  int horas = duracaoSegundos ~/ 3600;
  /*Da quantidade de segundos que sobrou extraio os minutos pois 1 minuto = 60 segundos*/
  int minutos = (duracaoSegundos % 3600) ~/ 60;
  /*A quantidade que sobrou é os segundos*/
  int segundos = (duracaoSegundos % 3600) % 60;
  print("Duração: $horas horas, $minutos minutos e $segundos segundos");
}
