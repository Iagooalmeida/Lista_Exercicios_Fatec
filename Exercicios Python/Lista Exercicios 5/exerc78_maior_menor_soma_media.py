# # 78 Escreva um algoritmo que permita ao usuário digitar vários e no final apresente: 
# # 1) o maior número; 2) o menor número; 3) a somados números; e 4) a média dos números

# # Inicializa a lista de números
# numeros = []

# # Loop para receber os números do usuário
# while True:
#     numero = float(input("Digite um número (digite 0 para sair): "))
    
#     # Verifica se o número é zero para encerrar o programa
#     if numero == 0:
#         break
    
#     # Adiciona o número à lista
#     numeros.append(numero)

# # Verifica se a lista de números não está vazia
# if numeros:
#     # Obtém o maior e o menor número
#     maior_numero = max(numeros)
#     menor_numero = min(numeros)

#     # Calcula a soma dos números
#     soma_numeros = sum(numeros)

#     # Calcula a média dos números
#     media_numeros = soma_numeros / len(numeros)

#     # Exibe os resultados
#     print("Maior número:", maior_numero)
#     print("Menor número:", menor_numero)
#     print("Soma dos números:", soma_numeros)
#     print("Média dos números:", media_numeros)
# else:
#     print("Nenhum número foi digitado.")



num = int(input("Digite um numero (Ou 0 para sair): "))

maior = num
menor = num
soma = 0
quantidade = 0
final_media = 0

while True:
    if num == 0:
        break

    if num > maior:
        maior = num
    if num < menor:
        menor = num

    soma += num
    quantidade += 1
    num = int(input("Digite um numero (Ou 0 para sair): "))
    
if quantidade == 0:
    print("Nenhum número foi digitado.")
    print("Fim de programa")
else:
    final_media = soma / quantidade
    
    print(f"O maior numero é: {maior}")
    print(f"O  menor numero é: {menor}")
    print(f"A soma de todos os numeros: {soma}")
    print(f"A media de todos os numeros: {final_media}")


    
   