# Escreva um algoritmo que receba o salário de trabalhador e informe qual o valor deve recolher en imposto de
# Renda de acordo com as alíquotas referente ao IRPF 2022

salario = float(input("Digite o seu sálario: "))

if salario > 3751.05 and salario <= 4664.68:
    inposto_renda = salario * 22.50 / 100
    print(inposto_renda)
elif salario > 2826.65 and salario <=  3751.05:
    inposto_renda = salario * 15 / 100
    print(inposto_renda)
elif salario > 1903.98 and salario <= 2826.65:
    inposto_renda = salario * 7.50 / 100
    print(inposto_renda)
else:
    print("Insento")