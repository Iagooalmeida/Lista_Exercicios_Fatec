/**9 - Crie um mapa onde as chaves são os nomes dos alunos e os valores são listas de
notas. Crie uma função que recebe o mapa como parâmetro e retorna um novo mapa
com as médias de notas de cada aluno. */

Map<String, List<double>> notasAlunos = {
  "João": [8.0, 7.0, 6.0, 9.0],
  "Maria": [10.0, 9.0, 8.0, 7.0],
  "José": [6.0, 5.0, 4.0, 3.0],
  "Ana": [10.0, 10.0, 10.0, 10.0],
  "Carlos": [7.0, 7.0, 7.0, 7.0]
};

Map<String, double> mediaNotas(Map<String, List<double>> notasAlunos){
  Map<String, double> media = {};

  for(var aluno in notasAlunos.keys){
    double soma = 0.0;
    for(var nota in notasAlunos[aluno]!){
      soma += nota;
    }
    media[aluno] = soma / notasAlunos[aluno]!.length;
  }

  return media;
}

void main(){
  print(mediaNotas(notasAlunos));
}