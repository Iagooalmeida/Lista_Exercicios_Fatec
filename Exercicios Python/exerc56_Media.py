# Escreva um algoritmo que receba 5 valores digitados pelousuário e no final exiba a média dos números.

i = 1
soma = 0
while i < 6:
    nota = float(input(f"Informe a sua {i} nota: "))
    while nota > 10:
        nota = float(input(f"Numero Invalido digite a {i} nota novamente: "))
    soma += nota
    i += 1

media = soma / 5
print(media)
print("!!Fim do programa!!")