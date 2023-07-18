# Escreva um algoritmo para calcular custos de viagem. O usuáriodeverá digitar a quantidade de pessoas no carro, 
# o valor docombustível por litro, a quantidade de Km percorrida, e o valor totaldos gastos com pedágio. 
# O algoritmo deverá calcular e exibir o custototal da viagem e o valor que cada passageiro deverá pagar.

# Solicita ao usuário as informações da viagem
quantidade_pessoas = int(input("Digite a quantidade de pessoas no carro: "))
valor_combustivel = float(input("Digite o valor do combustível por litro: "))
quilometros_percorridos = float(input("Digite a quantidade de quilômetros percorridos: "))
gastos_pedagio = float(input("Digite o valor total dos gastos com pedágio: "))

# Calcula o custo total da viagem
custo_combustivel = (quilometros_percorridos / 12) * valor_combustivel
custo_total = custo_combustivel + gastos_pedagio

# Calcula o valor que cada passageiro deverá pagar
valor_por_pessoa = custo_total / quantidade_pessoas

# Exibe os resultados
print("Custo total da viagem: R$", custo_total)
print("Valor que cada passageiro deve pagar: R$", valor_por_pessoa)
