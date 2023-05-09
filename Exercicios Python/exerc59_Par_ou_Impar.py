# Escreva um algoritmo que receba um número inteiro e determine se ele é par ou ímpar. 
# Dica: utilize o operador módulo (resto da divisão).

num = int(input("Digite um numero inteiro: "))

def resto(num):
    resto = num % 2 == 0
    return resto
    
if resto(num):
    print(f"O numero {num} é par")
else:
    print(f"O número {num} é impar")


print("!!!Fim de programa!!!")