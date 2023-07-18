# Escreva um algoritmo que carregue a seguinte lista num = [4, 8,15, 16, 23, 42] e:
# a)mostre todos os números;
# b)multiplique todos os números por 2;
# c)mostre a lista novamente com as alterações.

num = [4, 8, 15, 16, 23, 42]

# Mostra todos os números da lista
print("a) Números da lista:")
for numero in num:
    print(numero)

# Multiplica todos os números por 2
num = [numero * 2 for numero in num]

# Mostra a lista novamente com as alterações
print("b) Números da lista multiplicados por 2:")
for numero in num:
    print(numero)
