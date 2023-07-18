# Escreva um algoritmo para exibir a tabuada de um números fornecido pelo usuário.

num = int(input("Digite um número para ver a tabuada: "))
for i in range(1, 10+1):
    print(f"A multiplicação de {num} X {i} é igual: {num * i}")