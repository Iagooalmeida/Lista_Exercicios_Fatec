# Escreva um algoritmo que mostre o seguinte menu:
# A - Soma 
# B - Substração
# C - Multiplicação
# D - Divisão
# Ao escolher a opção acima o algoritmo deverá solicitar dois números para realizar a operação aritmética selecionada.
# caso ele selecione uma opção inválida no menu e caso ele digite o valor zero para realizar divisão.

def numeros():
    num1 = float(input("Digite o primeiro numero: "))
    num2 = float(input("Digite o segundo numero: "))
    return num1,num2

def letra(opcao_escolhida):
    if opcao_escolhida == "a":
        opcao_escolhida = "A"
    elif opcao_escolhida == "b":
        opcao_escolhida = "B"
    elif opcao_escolhida == "c":
        opcao_escolhida = "C"
    elif opcao_escolhida == "d":
        opcao_escolhida = "D"
    return opcao_escolhida

print("-------------------------")
print("    A - soma             ")
print("    B - Subtração        ")
print("    C - Multiplicação    ")
print("    D - Divisão          ")
print("-------------------------\n")

opcao_escolhida = input("Escolha umas das Opções acima: ")

opcao_escolhida = letra(opcao_escolhida)

match opcao_escolhida:
    case "A":
        num1, num2 = numeros()
        print(f"A soma de {num1} + {num2} é {num1 + num2}")
    case "B":
        num1, num2 = numeros()
        print(f"A subtracao de {num1} - {num2} é {num1 - num2}")
    case "C":
        num1, num2 = numeros()
        print(f"A multiplicação de {num1} X {num2} é {num1 * num2}")
    case "D":
        num1, num2 = numeros()
        if num1 == 0 or num2 == 0:
            print(f"Opcão Inválida")
        else:
            print(f"A divisão de {num1} % {num2} é {num1 / num2}")
    case _:
        print("Opção Inválida")