# Escreva um algoritmo que receba uma média (de zero a 10) e uma frequência (de zero a 100) de um(a) aluno(a) e:
# 1. Se o aluno possuir frequência menor que 75%, exiba a mensagem: “Você foi reprovado”; 
# 2. Se o aluno possuir frequência maior que 75% e média menor que 7, exiba a mensagem “Você está de recuperação”; 
# 3. Se o aluno possuir frequência maior que 75% e média maior ou igual que 7,exiba a mensagem “Você foi aprovado”.

media = float(input("Digite a média do aluno (de 0 a 10): "))
frequencia = float(input("Digite a frequência do aluno (de 0 a 100): "))

if frequencia < 75:
    print("Você foi reprovado.")
elif media < 7:
    print("Você está de recuperação.")
else:
    print("Você foi aprovado.")
