# Escreva um algoritmo que calcule o fatorial de um número fornecido pelo usuário


num = int(input("Digite um numero: "))
fatoral = 1

if num < 0:
    print("Não se pode imprimir números negativos")
else:
    for i in range(1, num + 1):
        fatoral *= i
    print("O fatorial de", num, "é:", fatoral)


# def calcular_fatorial(numero):
#     fatorial = 1
#     for i in range(1, numero + 1):
#         fatorial *= i
#     return fatorial

# numero = int(input("Digite um número para calcular o fatorial: "))

# # Verifica se o número é negativo
# if numero < 0:
#     print("Não é possível calcular o fatorial de um número negativo.")
# else:
#     resultado = calcular_fatorial(numero)
#     print("O fatorial de", numero, "é:", resultado)

