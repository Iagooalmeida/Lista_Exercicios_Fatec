# Escreva um algoritmo que permita ao usuário digitar vários números e no final apresente a quantidade de pares e a soma dosnúmeros ímpares. 
# O programa deve ser finalizado quando o usuáriodigitar zero.

quantidade = 0
total_impar = 0

while True:
    num = int(input("Digite um numero: "))

    if num == 0:
        print("Fim de Programa!!!")
        break

    if num % 2 == 0:
        quantidade += 1
    else:
        total_impar += num

print(f"O total de numeros pares é: {quantidade}")
print(f"O total da soma dos impares é: {total_impar}")