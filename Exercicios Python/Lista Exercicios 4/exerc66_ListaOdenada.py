#Escreva um algoritmo que solicite números que devem ser inseridos em uma lista e em seguida ser ordenada
#de maneira crescente antes de ser exibida para o usuário. O programa deve ser encerrado quando o usuário
#entrar com o valor zero

numeros = [0]
cont = 1   
while cont != 0:
    num = int(input("entre com um número: "))
    if num != 0:    
        numeros.append(num)
        numeros.sort()
        print(numeros)
    else:
        cont = 0
print("Programa encerrado")