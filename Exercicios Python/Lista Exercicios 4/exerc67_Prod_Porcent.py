#Escreva um algoritimo que receba o valor de um produto, acrescente 7% de juros a este valor,
# divida o total por 10 e exiba para o usuário o valor das parcelas e o total da compra.

prod = float(input("Informe o valor do produto: "))

reajuste = prod + prod * 0.07

parcelas = reajuste / 10

print(f"O numero de parcela é R$ {parcelas}")
print(f"O valor total da compra é R$ {reajuste}")