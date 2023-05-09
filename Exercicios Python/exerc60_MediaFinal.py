# Escreva um algoritmo que receba um nome e três notas e atenda exiba uma mensagem diferente para cada
# um dos casos a seguir:

# Se a média for maior que 7, exiba a mensagem “Parabéns(nome)! Você foi aprovado”;
# Se a média for menor que 7 e maior que 5, exiba a mensagem “Você ficou com média (media) e está de recuperação;
# Se a média for menor que 5, exiba a mensagem “(Nome), você está reprovado”.

soma = 0
nome = input("Digite o seu nome: ")

for i in range(1, 4):
    nota = float(input(f"Informe a {i} nota: "))
    while nota > 10 or nota < 0:
        nota = float(input(f"Número Inválido digite a {i} nota novamente: "))
    soma += nota
media = soma / 3
print(f"Sua média é: {media:.2f}")

if media >= 7:
    print(f"Parabéns {nome}! Você foi aprovado")
elif media >= 5:
    print(f"Você ficou com a média {media:.2f} e está de recuperação")
else:
    print(f"{nome} Você está reprovado")